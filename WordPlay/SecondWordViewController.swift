//
//  SecondWordViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class SecondWordViewController: UIViewController, UITextFieldDelegate {

    //Variables
    var name:String!
    var adjective:String!
    var secondWord:String!

    //IBOutlets
    @IBOutlet weak var secondWordLabel: UILabel!
    @IBOutlet weak var secondWordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        secondWordLabel.text = "Your first word is \(adjective) and second word is..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        var thridWordVC = segue.destinationViewController as ThirdWordViewController

        thridWordVC.secondWord = secondWordTextField.text
        thridWordVC.name = name
        thridWordVC.adjective = adjective

        secondWordTextField.text = ""
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

        self.view.endEditing(true)
    }
    
}
