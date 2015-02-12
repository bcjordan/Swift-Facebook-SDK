//
//  SettingsViewController.swift
//  FacebookDemoSwift
//
//  Created by Brian Jordan on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var settingsNames = ["Links", "Statuses", "Photos", "Videos"]
    var setting:NSDictionary?
    
    @IBAction func onClose(sender: AnyObject) {
        self.dismissViewControllerAnimated(true
            , completion: nil)
    }
    @IBAction func onApply(sender: AnyObject) {
        self.dismissViewControllerAnimated(true
            , completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SettingsCell", forIndexPath: indexPath) as SettingsTableViewCell
//        cell.statusText.text = post["message"] as? NSString
        cell.settingsName.text = self.settingsNames[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
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
