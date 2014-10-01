//
//  ResultsViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

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

        self.resultsTextView.text = "\(name) and \(adjective) and \(secondWord) and \(thirdWord)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
