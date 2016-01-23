//
//  SearchVC.swift
//  HackAZ
//
//  Created by Maxfield Lehman on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    
    var resultList = [Buddy]()
    
    @IBOutlet weak var courseInput: UITextField!
    
    @IBOutlet weak var passedButton: DLRadioButton!
    
    @IBOutlet weak var enrolledButton: DLRadioButton!
    
    @IBOutlet weak var hwButton: DLRadioButton!
    
    @IBAction func searchButton(sender: AnyObject) {
        if(hwButton.selected) {
            // Search within hwList
            for peer in hwList {
                if(peer.course == courseInput.text) {
                    resultList.append(peer)
                }
            }
        } else if(passedButton.selected) {
            // Search within tutorList
            for peer in tutorList {
                if(peer.course == courseInput.text) {
                    resultList.append(peer)
                }
            }
        } else if(enrolledButton.selected) {
            // Search within buddyList
            for peer in buddyList {
                if(peer.course == courseInput.text) {
                    resultList.append(peer)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultList.removeAll()

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
