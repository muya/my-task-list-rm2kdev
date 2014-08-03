//
//  TaskManager.swift
//  My Task List
//
//  Created by Muya on 8/3/14.
//  Copyright (c) 2014 muya. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
