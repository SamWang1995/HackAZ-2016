//
//  SearchVC.swift
//  HackAZ
//
//  Created by Maxfield Lehman on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    
    @IBOutlet weak var courseInput: UITextField!
    
    @IBOutlet weak var passedButton: DLRadioButton!
    
    @IBOutlet weak var enrolledButton: DLRadioButton!
    
    @IBOutlet weak var hwButton: DLRadioButton!
    
    @IBAction func searchButton(sender: AnyObject) {
        if(hwbutton.selected) {
            // Search within hwList
        } else if(passedButton.selected) {
            // Search within tutorList
        } else if(enrolledButton.selected) {
            // Search within buddyList
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
