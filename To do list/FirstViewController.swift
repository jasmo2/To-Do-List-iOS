//
//  FirstViewController.swift
//  To do list
//
//  Created by Jaime Molina Orbe on 2/16/15.
//  Copyright (c) 2015 jasmo2. All rights reserved.
//

import UIKit

var globalTask = [String]()//Empty Str Array


class FirstViewController:
UIViewController, UITableViewDelegate {
    var firstTask = [String]()//Empty Str Array

    @IBOutlet var toDoListTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return globalTask.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = globalTask[indexPath.row]
        return cell
    }

    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }
    
    
    
    }

