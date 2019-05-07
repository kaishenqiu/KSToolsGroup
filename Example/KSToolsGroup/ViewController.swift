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
        let tableV = KSTable(frame: CGRect(x: 0,y: 50,width: 300,height: 500),identifier:String(describing: TicketSummaryCell.self))
        tableV.ds = [["java","swift","js"],["java","swift","js"]]
        tableV.onCellData = { cell,obj in
            let acell = cell as! TicketSummaryCell
            acell.lab1.text = ""
            acell.lab2.text = ""
            acell.lab3.text = ""
            acell.lab4.text = obj as? String
        }
        self.view.addSubview(tableV)
   
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

