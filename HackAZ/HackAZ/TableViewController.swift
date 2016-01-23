//
//  TableViewController.swift
//  HackAZ
//
//  Created by Samuel Wang on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var fromBuddy = false
    var fromTutor = false
    var fromHomework = false
    
    var buddySubmit: Buddy?
    
    var currentList = [Buddy]()
    
    @IBOutlet weak var seggy: UISegmentedControl!
    
    @IBAction func searchButton(sender: AnyObject) {
        performSegueWithIdentifier("toSearch", sender: self)
    }
    
    @IBAction func commentButton(sender: AnyObject) {
        performSegueWithIdentifier("toComments", sender: self)
    }
    
    
    @IBAction func segmentedControl(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            currentList = buddyList
        case 1:
            currentList = tutorList
        case 2:
            currentList = hwList
        default:
            assert(false)
        }
        
        self.tableView.reloadData()
    }
    
    override func viewDidAppear(animated: Bool) {
        if(fromBuddy){
            buddyList.insert(buddySubmit!, atIndex: 0)
            currentList = buddyList
            fromBuddy   = false
            seggy.selectedSegmentIndex = 0
        }else if(fromTutor){
            tutorList.insert(buddySubmit!, atIndex: 0)
            currentList = tutorList
            fromTutor   = false
            seggy.selectedSegmentIndex = 1
        } else if(fromHomework) {
            hwList.insert(buddySubmit!, atIndex: 0)
            currentList  = hwList
            fromHomework = false
            seggy.selectedSegmentIndex = 2
        }
        
        self.tableView.reloadData()
    }
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentList = buddyList        
        
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
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MainCell
        //cell.textLabel?.text = currentList[indexPath.item].name
        cell.name.text    = currentList[indexPath.item].name
        cell.course.text  = currentList[indexPath.item].course
        cell.content.text = currentList[indexPath.item].description
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

// List variables are global so that reloading the tabe view data does not wipe changes

var buddyList = [Buddy(name: "Bob",  course: "CSE 120", description: "Hi, I need some help with Baumann's Digital Design class. I was pretty good up until Mealy Models (Moore Models were sooo easy) but now I'm completely lost. I think I need someone to help me get back up to speed and stay there. Is anybody else in her class looking for a study buddy?", pic: nil),
                 Buddy(name: "Sue", course: "CSE 230", description: "I'm FREAKING OUT about Burger's test on Thursday. I've been putting off studying for way too long. I'm really used to having a lot of friends in my classes to study with me, but on my own I don't seem to get much done. Doen anyone else feel this way? Maybe we could study for this test and the final together?", pic: nil)]

var tutorList = [Buddy(name: "Karen", course: "MAT 371", description: "Hey, has anyone on here taken Advanced Calc with Professor Kuiper? My whole class is pretty stuck on the whole uniform continuity thing. I asked pretty much everyone else already, so now I have to turn to you guys who've already taken it. Is anyone up to meet me in the library and walk me through from regular continuity to uniform continuity? I'll bring the coffee! Thanks!", pic: nil),
                 Buddy(name: "David", course: "CSE 110", description: "I think I'm in the wrong major. I thought I liked computers but I just can't get the hang of programming. I'm worried I'll fail my class if I don;t get it together soon. I'm too nervous to ask the people in my class because they all seem so far ahead of me. Obviously, you all will be too, but you at least had a head start. Tons of these people were just like me before this class. Please, help me get through my first (and last) programming class.", pic: nil)]

var hwList    = [Buddy(name: "Michael", course: "IEE 380", description: "I just wanted to check something real quick with anyone who's in or has taken Stats with Chattin. Did the solutions given for the homework match your problems, or were they the solutions to the examples in the textbook? Mine seem to be the latter, and Chattin hasn't emailed me back yet. Thanks in advance!",   pic: nil),
                 Buddy(name: "Alex",     course: "MAT 416", description: "Hey, for the first problem for Kierstead's class, did you guys use a proof by contradiction using the complement of the graph? That seems to work but it feels a little clumsy to me and I'm sure someone has a better way. Let me know, thanks!", pic: nil),
                 Buddy(name: "Steven",  course: "MAT 342", description: "Webwork sux...", pic: nil)]
