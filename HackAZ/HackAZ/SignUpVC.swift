//
//  SignUpVC.swift
//  HackAZ
//
//  Created by Maxfield Lehman on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var schoolTextField: UITextField!
    @IBOutlet var error: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isValidEmail(testStr:String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluateWithObject(testStr)
        
        return result
        
    }
    
    @IBAction func confirmSignUp(sender: AnyObject) {
        // Verify valid email
        if isValidEmail(emailTextField.text!) && (usernameTextField.text != "") && (passwordTextField.text != "") && (schoolTextField.text != "")
        {
           performSegueWithIdentifier("toMain", sender: self)
        }
        else
        {
           error.alpha = 1 
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

