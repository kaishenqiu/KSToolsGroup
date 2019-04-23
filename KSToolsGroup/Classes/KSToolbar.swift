//
//  ANToolbar.swift
//  PigManager
//
//

import UIKit

class KSToolbar: UIToolbar {
    
    var controller:UIViewController?
    
    convenience init(controller:UIViewController) {
        self.init()
        setup1(controller: controller)
    }
    convenience init(view:UIView) {
        self.init()
        setup2(view: view)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup1(controller:UIViewController) {
        barStyle = UIBarStyle.default
        sizeToFit()
        let buttonflexible = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let buttonDone = UIBarButtonItem(title: "完成", style: UIBarButtonItem.Style.done, target: controller, action: #selector(UIViewController.doneClicked(_:)))
        buttonDone.tintColor = UIColor.black
        setItems([buttonflexible, buttonDone], animated: true)
    }
    func setup2(view:UIView) {
        barStyle = UIBarStyle.default
        sizeToFit()
        let buttonflexible = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let buttonDone = UIBarButtonItem(title: "完成", style: UIBarButtonItem.Style.done, target: view, action: #selector(UIView.doneClicked(_:)))
        buttonDone.tintColor = UIColor.black
        setItems([buttonflexible, buttonDone], animated: true)
    }
 
}
extension UIView {
    @objc func doneClicked(_ sender: UIBarButtonItem) {
        self.endEditing(true)
        self.resignFirstResponder()
    }
    
}

extension UIViewController {
    @objc func doneClicked(_ sender: UIBarButtonItem) {
        self.view.endEditing(true)
    }
}
