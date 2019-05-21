//
//  ViewController.swift
//  KSToolsGroup
//
//  Created by 375752785@qq.com on 04/22/2019.
//  Copyright (c) 2019 375752785@qq.com. All rights reserved.
//

import UIKit
import KSToolsGroup
class ViewController: UIViewController,KSMenuChooseDelegate {
 
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.inputAccessoryView = KSToolbar(controller:self)
        // Do any additional setup after loading the view, typically from a nib.
        KSToast("9999")
       let uuu =  KSGlobal.pageSize
        let view = UIView()
        view.ks_width = 9
        
        let menuchooseV = KSMenuChooseView(frame:CGRect(x:12, y:0, width:KSGlobal.screenW - 80, height:32), themecolor:.red, titles:["繁殖管理","种猪档案","生产管理","养户管理"])
        menuchooseV.delegate = self
    }
    func ksMenuChoose(selectIndex: Int) {
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

