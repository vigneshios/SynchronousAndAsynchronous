//
//  ViewController.swift
//  synchronous&AsynchronousTasking
//
//  Created by vignesh on 8/6/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let main = DispatchQueue.main
    let background = DispatchQueue.global()
    let helper = DispatchQueue(label: "construction_worker_3")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        doSyncTask()
        
        doAsyncTask()

        
        
    }
    
    func doSyncTask() {
        background.sync {
            for _ in 1...3 {
                print("light work")
            }
        }
        for _ in 1...3 {
            print("heavy work")
        }
    }
    
    
    func doAsyncTask() {
        background.async { for _ in 1...3 { print("Light") } }
        for _ in 1...3 { print("Heavy") } }
    
    
    
    

}

