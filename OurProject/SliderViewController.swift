//
//  SliderViewController.swift
//  OurProject
//
//  Created by Wafi MoHamed on 3/8/16.
//  Copyright © 2016 wafi. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var profileImage: UIImageView!
    
    var manuItems:[String] = ["Home", "Sell", "Categories", "Help", "Categories"];
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        makingRoundedImageProfileWithRoundedBorder()
         
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
     {
          return manuItems.count
        
    }
    
    
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let silderCell = tableView.dequeueReusableCellWithIdentifier("silderCell", forIndexPath: indexPath) as! SliderTableViewCell
            
            
            silderCell.itemMenu.text = manuItems[indexPath.row]
            
            return silderCell
            
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
        switch(indexPath.row)
        {
          case 0:
            let main_View_Controller = self.storyboard!.instantiateViewControllerWithIdentifier("mainViewController") as? mainViewController
           let center_nav = UINavigationController(rootViewController: main_View_Controller!)
            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.centerContianer!.centerViewController = center_nav
            appDelegate.centerContianer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            
            break;
            
        case 1:
            
            _ = self.storyboard!.instantiateViewControllerWithIdentifier("ListItemsViewController") as? ListItemsViewController
            
            let vc = self.storyboard!.instantiateViewControllerWithIdentifier("ItemsNav") as? UINavigationController
            
            presentViewController(vc!, animated: true, completion: nil)
            
            
            //         let listItem_nav = UINavigationController(rootViewController: List_ItemController!)
            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            //            appDelegate.centerContianer!.centerViewController = listItem_nav
            appDelegate.centerContianer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            
            break;
        case 2:
            let collections_Controller = self.storyboard!.instantiateViewControllerWithIdentifier("categorieViewController") as? categorieViewController
            let collectionsNav = UINavigationController(rootViewController: collections_Controller!)
            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.centerContianer!.centerViewController = collectionsNav
            appDelegate.centerContianer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            
           case 3:
            let help_Controller = self.storyboard!.instantiateViewControllerWithIdentifier("HelpViewController") as? HelpViewController
            let HelpNav = UINavigationController(rootViewController: help_Controller!)
            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.centerContianer!.centerViewController =  HelpNav
            appDelegate.centerContianer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            default: break
        
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        view.endEditing(true)

    }

    
    
    private func makingRoundedImageProfileWithRoundedBorder() {
        // Making a circular image profile.
        //        self.myUIImageView.layer.cornerRadius = self.myUIImageView.frame.size.width / 2
        // Making a rounded image profile.
        self.profileImage.layer.masksToBounds = false
        self.profileImage.layer.cornerRadius = 30.0
        self.profileImage.clipsToBounds = true
        self.profileImage.layer.borderWidth = 15.0
        self.profileImage.layer.borderColor = UIColor.clearColor().CGColor
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
