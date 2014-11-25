//
//  ThirdWordViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ThirdWordViewController: UIViewController, UITextFieldDelegate {

    //MARK: - Variables IBOutlets
    var name:String!
    var adjective:String!
    var secondWord:String!

    @IBOutlet weak var thirdWordLabel: UILabel!
    @IBOutlet weak var thirdWordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        thirdWordLabel.text = "Your first word is \(adjective) and second word is \(secondWord) and third word is..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARK: - prepareForSegue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var resultsVC = segue.destinationViewController as ResultsViewController
        if thirdWordTextField.text == "" {
            var alert = UIAlertController(title: "Enter Word", message: "Please enter a word to continue!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            presentViewController(alert, animated: true, completion: nil)

        } else {
            resultsVC.thirdWord = thirdWordTextField.text
            resultsVC.name = name
            resultsVC.adjective = adjective
            resultsVC.secondWord = secondWord
            thirdWordTextField.text = ""
        }
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        thirdWordTextField.resignFirstResponder()
        return true
    }
}
