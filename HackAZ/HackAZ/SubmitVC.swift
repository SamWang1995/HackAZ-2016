//
//  SubmitVC.swift
//  HackAZ
//
//  Created by Maxfield Lehman on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class SubmitVC: UIViewController {
    
    let buddyBlurb = "Find a study buddy for the rest of the semester."
    let tutorBlurb = "Get help from someone who already took the class."
    let hwBlurb    = "Get one-time help on a homework problem."
    
    @IBOutlet weak var blurb: UILabel!

    @IBOutlet weak var course: UITextField!
    
    @IBOutlet weak var content: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blurb.text = buddyBlurb
        
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentedControl(sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
            // Buddy
            blurb.text = buddyBlurb
        } else if(sender.selectedSegmentIndex == 1) {
            // Tutor
            blurb.text = tutorBlurb
        } else {
            // Homework
            blurb.text = hwBlurb
        }

    }
    @IBOutlet weak var seggy: UISegmentedControl!
    
    @IBAction func submitPost(sender: AnyObject) {
        performSegueWithIdentifier("toMain", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "toMain"){
            let destVC = segue.destinationViewController as! TableViewController
            if(seggy.selectedSegmentIndex == 0){
                destVC.fromBuddy = true
            }
            else if(seggy.selectedSegmentIndex == 1){
                destVC.fromTutor = true
            }else{
                destVC.fromHomework = true
            }
            
            destVC.buddySubmit = [Buddy(name: "John Doe", course: course.text!, description: content.text!, pic: nil)]
        }
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
