//
//  CollectionsViewController.swift
//  OurProject
//
//  Created by Wafi MoHamed on 3/9/16.
//  Copyright © 2016 wafi. All rights reserved.
//

import UIKit
import BTNavigationDropdownMenu

class categorieViewController: UIViewController{
     var menuView: BTNavigationDropdownMenu!
   
    @IBOutlet weak var collectionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "List Items"

        let items = ["Books", "Electronics", "cars & Motors", "Games", "Movies & Music"]
        self.collectionLabel.text = items.first
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, title: items.first!, items: items)
        menuView.cellHeight = 50
        menuView.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        menuView.cellSelectionColor = UIColor(red: 0.0/255.0, green:160.0/255.0, blue:195.0/255.0, alpha: 1.0)
        menuView.cellTextLabelColor = UIColor.whiteColor()
        menuView.cellTextLabelFont = UIFont(name: "Avenir-Heavy", size: 17)
        menuView.cellTextLabelAlignment = .Left // .Center // .Right // .Left
        menuView.arrowPadding = 15
        menuView.animationDuration = 0.5
        menuView.maskBackgroundColor = UIColor.blackColor()
        menuView.maskBackgroundOpacity = 0.3
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            self.collectionLabel.text = items[indexPath]
        }
        
        self.navigationItem.titleView = menuView
    }
    
    @IBAction func onClick(sender: AnyObject) {
        
        
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.centerContianer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
        

    }
    
}
    //let menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, title: items.first!, items: items)

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

*/


