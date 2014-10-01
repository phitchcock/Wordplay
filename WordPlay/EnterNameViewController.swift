//
//  EnterNameViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class EnterNameViewController: UIViewController, UITextFieldDelegate {

    //IBOutlets
    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        var enterAdjectiveVC = segue.destinationViewController as EnterAdjectiveViewController

        if nameTextField.text == "" {

            var alert = UIAlertController(title: "Enter Name", message: "Please enter a name to play!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)


        } else {

            enterAdjectiveVC.name = nameTextField.text
            nameTextField.text = ""
        }
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

        self.view.endEditing(true)
        
    }
    
}
