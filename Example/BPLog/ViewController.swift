//
//  ViewController.swift
//  BPLog
//
//  Created by TestEngineerFish on 06/09/2021.
//  Copyright (c) 2021 TestEngineerFish. All rights reserved.
//

import UIKit
import BPLog

class ViewController: UIViewController, BPLogDelegate {
    func addNormalLogAfter() {
        BPLog(1)
    }
    
    func addRequestLogAfter() {
        BPLog(2)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        BPLogManager.share.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

