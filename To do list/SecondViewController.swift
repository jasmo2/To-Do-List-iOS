//
//  SecondViewController.swift
//  To do list
//
//  Created by Jaime Molina Orbe on 2/16/15.
//  Copyright (c) 2015 jasmo2. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet var task: UITextField!
    //var task:FirstViewController = FirstViewController()
    @IBAction func addTask(sender: AnyObject) {
        globalTask.append(task.text)
        task.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }


}

