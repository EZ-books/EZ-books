//
//  LogInViewController.swift
//  test
//
//  Created by Wafi MoHamed on 3/12/16.
//  Copyright © 2016 wafi. All rights reserved.
//

import UIKit
import Parse

class LogInViewController: UIViewController {

    @IBOutlet weak var UsernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    var actionInd: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0,0,150,150)) as UIActivityIndicatorView
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        self.actionInd.center = self.view.center
        self.actionInd.hidesWhenStopped = true
        self.actionInd.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(self.actionInd)
    }
    

    @IBAction func onLogin(sender: AnyObject) {
        
        var username = self.UsernameField.text
        var password = self.passwordField.text
        

       
        if (username!.utf16.count < 4 || password!.utf16.count < 5) {
            
            var alert = UIAlertView(title: "Invalid", message: "Username must be greater then 4 and Password must be greater then 5", delegate: self, cancelButtonTitle: "OK")
            alert.show()
            
        }else {
            
            self.actionInd
                .startAnimating()
            
            PFUser.logInWithUsernameInBackground(username!, password: password!, block: { (user, error) -> Void in
                
                self.actionInd.stopAnimating()
                
                if ((user) != nil) {
                    
                    var alert = UIAlertView(title: "Success", message: "Logged In", delegate: self, cancelButtonTitle: "OK")
                    alert.show()
                    
                }else {
                    
                    var alert = UIAlertView(title: "Error", message: "\(error)", delegate: self, cancelButtonTitle: "OK")
                    alert.show()
                    
                }
                
            })
            
        }
        
    }

    
    
    
    @IBAction func onSignUp(sender: AnyObject) {
        
        self.performSegueWithIdentifier("SignUp", sender: self)
  
        
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
