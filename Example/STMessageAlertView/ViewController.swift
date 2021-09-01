//
//  ViewController.swift
//  STMessageAlertView
//
//  Created by adolph.suntao@gmail.com on 09/01/2021.
//  Copyright (c) 2021 adolph.suntao@gmail.com. All rights reserved.
//

import UIKit
import STMessageAlertView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        STMessageAlertView.showMessage("123456")
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

