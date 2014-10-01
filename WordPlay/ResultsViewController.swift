//
//  ResultsViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit
import Foundation

class ResultsViewController: UIViewController {

    //Vars
    var name:String!
    var adjective:String!
    var secondWord:String!
    var thirdWord:String!

    //IBOutlets
    @IBOutlet weak var resultsTextView: UITextView!



    override func viewDidLoad() {
        super.viewDidLoad()

        // Define string attributes
        let textFont = [NSFontAttributeName:UIFont(name: "Georgia", size: 28.0)]
        let italFont = [NSFontAttributeName:UIFont(name: "Georgia-Italic", size: 10.0)]
        let boldFont = [NSFontAttributeName:UIFont(name: "Georgia-Bold", size: 18.0)]

        // Create a string that will be our paragraph
        let para = NSMutableAttributedString()

        // Create locally formatted strings
        let attrString1 = NSAttributedString(string: "name: \(name) ", attributes:textFont)
        let attrString2 = NSAttributedString(string: "adjective: \(adjective) ", attributes:italFont)
        let attrString3 = NSAttributedString(string: "second word: \(secondWord) ", attributes:textFont)
        let attrString4 = NSAttributedString(string: "third word: \(thirdWord) ", attributes:boldFont)

        // Add locally formatted strings to paragraph
        para.appendAttributedString(attrString1)
        para.appendAttributedString(attrString2)
        para.appendAttributedString(attrString3)
        para.appendAttributedString(attrString4)

        resultsTextView.attributedText = para

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
