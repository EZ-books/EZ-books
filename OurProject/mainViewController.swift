//
//  ViewController.swift
//  OurProject
//
//  Created by Wafi MoHamed on 3/8/16.
//  Copyright © 2016 wafi. All rights reserved.
//

import UIKit
import BTNavigationDropdownMenu
import AFNetworking
import MBProgressHUD

class mainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    var menuView: BTNavigationDropdownMenu!
    var endpoint: String!
    var movies: [NSDictionary]?
    
    
    var images: [UIImage] = [
        UIImage(named: "alchemist.jpg")!,
        UIImage(named: "intentional.jpg")!,
        UIImage(named: "java.jpg")!,
        UIImage(named: "richDad.jpg")!,
        UIImage(named: "steve.jpg")!,
        UIImage(named: "swift.jpg")!,
        UIImage(named: "theSecret.jpg")!,
        UIImage(named: "think.jpg")!,
        UIImage(named: "zuck.jpg")!,UIImage(named: "alchemist.jpg")!,
        UIImage(named: "intentional.jpg")!,
        UIImage(named: "java.jpg")!,
        UIImage(named: "richDad.jpg")!,
        UIImage(named: "steve.jpg")!,
        UIImage(named: "swift.jpg")!,
        UIImage(named: "theSecret.jpg")!,
        UIImage(named: "think.jpg")!,
        UIImage(named: "zuck.jpg")!,
        UIImage(named: "alchemist.jpg")!,
        UIImage(named: "intentional.jpg")!,
        UIImage(named: "java.jpg")!,
        UIImage(named: "richDad.jpg")!,
        UIImage(named: "steve.jpg")!,
        UIImage(named: "swift.jpg")!,
        UIImage(named: "theSecret.jpg")!,
        UIImage(named: "think.jpg")!,
        UIImage(named: "zuck.jpg")!,UIImage(named: "alchemist.jpg")!,
        UIImage(named: "intentional.jpg")!,
        UIImage(named: "java.jpg")!,
        UIImage(named: "richDad.jpg")!,
        UIImage(named: "steve.jpg")!,
        UIImage(named: "swift.jpg")!,
        UIImage(named: "theSecret.jpg")!,
        UIImage(named: "think.jpg")!,
        UIImage(named: "zuck.jpg")!,
        UIImage(named: "alchemist.jpg")!,
        UIImage(named: "intentional.jpg")!,
        UIImage(named: "java.jpg")!,
        UIImage(named: "richDad.jpg")!,
        UIImage(named: "steve.jpg")!,
        UIImage(named: "swift.jpg")!,
        UIImage(named: "theSecret.jpg")!,
        UIImage(named: "think.jpg")!,
        UIImage(named: "zuck.jpg")!,UIImage(named: "alchemist.jpg")!,
        UIImage(named: "intentional.jpg")!,
        UIImage(named: "java.jpg")!,
        UIImage(named: "richDad.jpg")!,
        UIImage(named: "steve.jpg")!,
        UIImage(named: "swift.jpg")!,
        UIImage(named: "theSecret.jpg")!,
        UIImage(named: "think.jpg")!,
        UIImage(named: "zuck.jpg")!,
        UIImage(named: "alchemist.jpg")!,
        UIImage(named: "intentional.jpg")!,
        UIImage(named: "java.jpg")!,
        UIImage(named: "richDad.jpg")!,
        UIImage(named: "steve.jpg")!,
        UIImage(named: "swift.jpg")!,
        UIImage(named: "theSecret.jpg")!,
        UIImage(named: "think.jpg")!,
        UIImage(named: "zuck.jpg")!,UIImage(named: "alchemist.jpg")!,
        UIImage(named: "intentional.jpg")!,
        UIImage(named: "java.jpg")!,
        UIImage(named: "richDad.jpg")!,
        UIImage(named: "steve.jpg")!,
        UIImage(named: "swift.jpg")!,
        UIImage(named: "theSecret.jpg")!,
        UIImage(named: "think.jpg")!,
        UIImage(named: "zuck.jpg")!
        

        

        
        
    ]

    
    //["one", "two", "three", "four", "five", "six", "Seven", "eight", "nine"]
    
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
  
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadImages()
        
        let items = ["Home", "Sell", "Purchase", "Campare Prices", "Rent Books"]
        //self.textLabel.text = items.first
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:160/255.0, blue:220/255.0, alpha: 1.0)
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
            self.textLabel.text = items[indexPath]
        }
        
        self.navigationItem.titleView = menuView
        
    
//        switch items
//        {
//        case 0:
//           self.storyboard!.instantiateViewControllerWithIdentifier("mainViewController") as? mainViewController
//            break;
//        case 1:
//       self.storyboard!.instantiateViewControllerWithIdentifier("ListItemsViewController") as? ListItemsViewController
//            default: break
//    
//
//    }
    }
        
        // Do any additional setup after loading the view, typically from a nib.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        
        return images.count
    }
    
    
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("myCell", forIndexPath: indexPath) as! myCell
        
      cell.myImageView.image = images[indexPath.row]
        
        //cell.myLabel.text = images[indexPath.item]

//        
//        let cell:myCell = collectionView.dequeueReusableCellWithReuseIdentifier("myCell", forIndexPath: indexPath) as! myCell
//
//        let imageString = self.images[indexPath.row]
//        let imageUrl = NSURL(string: imageString)
////        let imageData = NSDate(contentsOfURL: imageUrl!)
//
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0){
//           
//            dispatch_async(dispatch_get_main_queue(),{
//            
//            
//            let imageString = self.images[indexPath.row]
//            let imageUrl = NSURL(string: imageString)
//            let imageData = NSDate(contentsOfURL: imageUrl!)
//            
//            
//            if(imageData != nil)
//            {
//                myCell.myImageView.image = UIimage(data: imageData!)
//            }
//            
//            });
//            
//            });
//        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        
        print("user tapped on image #  \(indexPath.row)")
        
    }
    
    
    
    func loadImages(){
        
        
        
//        
//         let startTime = NSDate.timeIntervalSinceRefenrenceDate()
//        
//        var pageUrl = "http://swiftdeveloperblog.com/list-of-images/?uudi=" + NSUUID().UUIDString
//        
//        let myUrl = NSURL(string: pageUrl);
//        let request = NSMutableURLRequest(URL:myUrl!);
//        
//        let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
//            data, response, error in
//            
//            //if error display alert message
//            if error != nil{
//                
//                var okAction = UIAlertController(title: "Alert", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.Alert)
//                
//            //    let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil)
//                
//                return
//        }
//            
//            var err:NSError?
//            var jsonArray = NSJSONSerialization.JSONObjectWithData(data, options: MutableContainers, error: &err) as? NSArray
//            
//            if let  parseJSONArray  = jsonArray {
//                
//                self.images = parseJSONArray as! [String]
//                
//                dispatch_async(dispatch_get_main_queue(),{
//                    
//                    self.myCollectionView.reloadData()
//                });
//            }
//        }
//        
//        task.resume()
        
        
        MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        
        let apiKey = "a07e22bc18f5cb106bfe4cc1f83ad8ed"
        let url = NSURL(string:"https://api.themoviedb.org/3/movie/\(endpoint)?api_key=\(apiKey)")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession(
            configuration: NSURLSessionConfiguration.defaultSessionConfiguration(),
            delegate:nil,
            delegateQueue:NSOperationQueue.mainQueue()
        )
        
        let task : NSURLSessionDataTask = session.dataTaskWithRequest(request,
            completionHandler: { (dataOrNil, response, error) in
                if let data = dataOrNil {
                    if let responseDictionary = try! NSJSONSerialization.JSONObjectWithData(
                        data, options:[]) as? NSDictionary {
                            NSLog("response: \(responseDictionary)")
                            
                            self.movies = responseDictionary["results"] as? [NSDictionary]
                           self.myCollectionView.dataSource = self
                            self.myCollectionView.reloadData()
                            
                            
                            
                            
                            MBProgressHUD.hideHUDForView(self.view, animated: true)
                            
                            
                    }
                }
                
                
                
                
        });
        
        task.resume()
        
    }
    

    @IBAction func onClick(sender: AnyObject) {
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("ItemsNav") as? UINavigationController
        
        presentViewController(vc!, animated: true, completion: nil)
        

        
        
        
        
    }
    @IBAction func OnSlide(sender: AnyObject) {
        
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
          appDelegate.centerContianer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
        
    }
    
    
      
    
  }

