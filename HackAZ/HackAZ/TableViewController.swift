//
//  TableViewController.swift
//  HackAZ
//
//  Created by Samuel Wang on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    var buddyList = [Buddy]()
    var tutorList = [Buddy]()
    var hwList    = [Buddy]()
    var currentList = [Buddy(name: "Bob", course: "CSE 120 Digital Design", description: "HALP"), Buddy(name: "Bill", course: "CSE 230", description: "HALP")]
    
    @IBAction func segmentedControl(sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
            // Buddy
            //self.tableView.clear()
            currentList = [Buddy(name: "Bob", course: "CSE 120 Digital Design", description: "HALP"), Buddy(name: "Bill", course: "CSE 230", description: "HALP")]
            self.tableView.reloadData()
            
        } else if(sender.selectedSegmentIndex == 1) {
            // Tutor
            currentList = [Buddy(name: "Bill", course: "CSE 120 Digital Design", description: "Will halp for food"), Buddy(name: "Bill", course: "CSE 110", description: "Will halp for food")]
            self.tableView.reloadData()
        } else {
            // Homework
            currentList = [Buddy(name: "Sue", course: "CSE 240", description: "Pls help this is due NOWWWWWWWW!"), Buddy(name: "Joe", course: "MAT 371", description: "I can't prove continuity! Wahhhhh!"), Buddy(name: "Steven", course: "MAT 343", description: "Webwork sux...")]
            self.tableView.reloadData()
        }
    }
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentList = [Buddy(name: "Bob", course: "CSE 120 Digital Design", description: "HALP"), Buddy(name: "Bill", course: "CSE 230", description: "HALP")]
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return currentList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
            cell.textLabel?.text = currentList[indexPath.item].name
        return cell
    }
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
