//
//  SecondViewController.swift
//  My Task List
//
//  Created by Muya on 8/3/14.
//  Copyright (c) 2014 muya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //events
    @IBAction func btnAddTaskClick(sender: UIButton){
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController.selectedIndex = 0
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        //tell text field to resign it's first responder
        textField.resignFirstResponder();
        return true
    }
}

