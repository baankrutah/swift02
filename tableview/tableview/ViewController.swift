    //
//  ViewController.swift
//  tableview
//
//  Created by Phatthana Tongon on 1/24/2559 BE.
//  Copyright © 2559 Phatthana Tongon. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var names = ["Pan", "King", "Pang", "Pond"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        }
        else {
            return 4
        }
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCellWithIdentifier("tableViewCell")
        tableViewCell?.textLabel!.text = "Section: \(indexPath.section)  Row: \(indexPath.row)"
        return tableViewCell!
    }
}

