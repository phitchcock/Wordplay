//
//  ThirdWordViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ThirdWordViewController: UIViewController, UITextFieldDelegate {

    //Variables
    var name:String!
    var adjective:String!
    var secondWord:String!

    //IBOutlets
    @IBOutlet weak var thirdWordLabel: UILabel!
    @IBOutlet weak var thirdWordTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        thirdWordLabel.text = "Your first word is \(adjective) and second word is \(secondWord) and third word is..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        var resultsVC = segue.destinationViewController as ResultsViewController

        resultsVC.thirdWord = thirdWordTextField.text
        resultsVC.name = name
        resultsVC.adjective = adjective
        resultsVC.secondWord = secondWord

        thirdWordTextField.text = ""
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

        self.view.endEditing(true)
    }

}
