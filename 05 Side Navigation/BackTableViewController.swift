//
//  BackTableViewController.swift
//  05 Side Navigation
//
//  Created by Felipe Assunção on 4/12/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation


class BackTableViewController : UITableViewController {

    var tableOptions = [String]()
    
    override func viewDidLoad() {
        tableOptions = ["Home","Category","Products"]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableOptions.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = tableOptions[indexPath.row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DesVC = segue.destinationViewController as! ViewController
        let indexpath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        DesVC.varView = tableOptions[indexpath.row]
    }
    
}