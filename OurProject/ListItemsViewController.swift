//
//  ListItemsViewController.swift
//  OurProject
//
//  Created by Wafi MoHamed on 3/9/16.
//  Copyright © 2016 wafi. All rights reserved.
//

import UIKit

class ListItemsViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
 
         navigationItem.title = "Sell"
        
        
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
       
        // Do any additional setup after loading the view.
    }
    
    func popToRoot(sender:UIBarButtonItem){
        self.navigationController!.popToRootViewControllerAnimated(true)
    }

    @IBAction func onClick(sender: AnyObject) {
//        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//        appDelegate.centerContianer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
//        
       dismissViewControllerAnimated(false, completion: nil)
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
