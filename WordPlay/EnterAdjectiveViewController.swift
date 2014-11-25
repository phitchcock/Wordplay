//
//  EnterAdjectiveViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class EnterAdjectiveViewController: UIViewController, UITextFieldDelegate {

    //MARK: - Variables IBOutlets
    var name:String!

    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var adjectiveLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        adjectiveLabel.text = "Hello \(name.capitalizedString) enter your adjective"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARK: - prepareForSegue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var secondWordVC = segue.destinationViewController as SecondWordViewController
        if adjectiveTextField.text == "" {
            var alert = UIAlertController(title: "Enter Word", message: "Please enter an adjective to continue!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            presentViewController(alert, animated: true, completion: nil)

        } else {
            secondWordVC.adjective = adjectiveTextField.text
            secondWordVC.name = name
            adjectiveTextField.text = ""
        }
    }

    //MARK: - TextField Functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        adjectiveTextField.resignFirstResponder()
        return true
    }
}
