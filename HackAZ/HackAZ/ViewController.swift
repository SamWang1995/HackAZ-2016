//
//  ViewController.swift
//  HackAZ
//
//  Created by Samuel Wang on 1/22/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func LoginButton(sender: AnyObject) {
        performSegueWithIdentifier("toTables", sender: self)
    }
    
    @IBAction func SignUpButton(sender: AnyObject) {
        performSegueWithIdentifier("toSignUp", sender: self)
    }
    
    @IBOutlet weak var Logo: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}