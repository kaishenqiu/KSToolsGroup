//
//  ViewController.swift
//  KSToolsGroup
//
//  Created by 375752785@qq.com on 04/22/2019.
//  Copyright (c) 2019 375752785@qq.com. All rights reserved.
//

import UIKit
import KSToolsGroup

protocol Pizzeria {
    func makePizza(_ ingredients: [String])
}

extension Pizzeria {
    func makeMargherita() {
        return makePizza(["tomato", "mozzarella"])
    }
}

struct Lombardis: Pizzeria {
    func makePizza(_ ingredients: [String]) {
        print(ingredients)
    }
    func makeMargherita() {
        return makePizza(["tomato", "basil", "mozzarella"])
    }
}




class ViewController: UIViewController {
 
    
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
    }
    final func rrrfunc() {
        print ("fwefjoi")
    }
   


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

