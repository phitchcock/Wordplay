//
//  SecondWordViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class SecondWordViewController: UIViewController, UITextFieldDelegate {

    //MARK: - Variables IBOutlets
    var name:String!
    var adjective:String!
    var secondWord:String!

    @IBOutlet weak var secondWordLabel: UILabel!
    @IBOutlet weak var secondWordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondWordLabel.text = "Your first word is \(adjective) and second word is..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARK: - prepareForSegue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var thridWordVC = segue.destinationViewController as ThirdWordViewController
        if secondWordTextField.text == "" {
            var alert = UIAlertController(title: "Enter Second Word", message: "Please enter a word to continue!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            presentViewController(alert, animated: true, completion: nil)
            
        } else {
            thridWordVC.secondWord = secondWordTextField.text
            thridWordVC.name = name
            thridWordVC.adjective = adjective
            secondWordTextField.text = ""
        }
    }

    //MARK: - TextField Methods
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        secondWordTextField.resignFirstResponder()
        return true
    }
}
