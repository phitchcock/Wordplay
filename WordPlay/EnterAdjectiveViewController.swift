//
//  EnterAdjectiveViewController.swift
//  WordPlay
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class EnterAdjectiveViewController: UIViewController {

    //Vars
    var name:String!

    //IBOutlets
    @IBOutlet weak var adjectiveTextField: UITextField!

    //Vars
    //var adjective:String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        var vc = segue.destinationViewController as ResultsViewController

        vc.toPass = adjectiveTextField.text
        vc.name = name

    }


}
