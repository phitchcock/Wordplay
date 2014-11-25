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

    //MARK: - Variables IBOutlets
    var name:String!
    var adjective:String!
    var secondWord:String!
    var thirdWord:String!

    @IBOutlet weak var resultsTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultsTextView.text = "One \(name) two \(adjective) three \(secondWord) four \(thirdWord)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
