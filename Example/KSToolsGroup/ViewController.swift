//
//  ViewController.swift
//  KSToolsGroup
//
//  Created by 375752785@qq.com on 04/22/2019.
//  Copyright (c) 2019 375752785@qq.com. All rights reserved.
//

import UIKit
import KSToolsGroup
class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.inputAccessoryView = KSToolbar(controller:self)
        // Do any additional setup after loading the view, typically from a nib.
        var tableV = UITableView()
        
        KSLog("测试")
        tableV.mj_header = KSRefreshHeader {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

