//
//  MainViewController.swift
//  FacebookDemoSwift
//
//  Created by Timothy Lee on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var feedTableView: UITableView!
    var posts: NSArray?
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let post = self.posts![indexPath.row] as NSDictionary
        if let picture = post["picture"] as? NSString {
            let cell = tableView.dequeueReusableCellWithIdentifier("photocell", forIndexPath: indexPath) as PhotoTableViewCell
            cell.statusImage.setImageWithURL(NSURL(string: picture))
            cell.statusText.text = post["message"] as NSString
            cell.fromName.text = post["from"]?["name"] as NSString
            return cell
        }
        
        let cell = tableView.dequeueReusableCellWithIdentifier("com.briancjordan.facebookcell", forIndexPath: indexPath) as FeedItemTableViewCell
        cell.statusText.text = post["message"] as? NSString
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.posts != nil ? self.posts!.count : 0
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.feedTableView.rowHeight = UITableViewAutomaticDimension
        self.feedTableView.estimatedRowHeight = 100
        reload()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reload() {
        FBRequestConnection.startWithGraphPath("/me/home", parameters: nil, HTTPMethod: "GET") { (connection: FBRequestConnection!, result: AnyObject!, error: NSError!) -> Void in
            println("\(result)")
            self.posts = result["data"] as? NSArray
            self.feedTableView.reloadData()
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
