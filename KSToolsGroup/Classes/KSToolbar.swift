//
//  KSToolbar.swift
//
//

import UIKit

open class KSToolbar: UIToolbar {
    public convenience init(controller:UIViewController) {
        self.init()
        setup1(controller: controller)
    }
    public convenience init(view:UIView) {
        self.init()
        setup2(view: view)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup1(controller:UIViewController) {
        barStyle = UIBarStyle.default
        sizeToFit()
        let buttonflexible = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let buttonDone = UIBarButtonItem(title: "完成", style: UIBarButtonItem.Style.done, target: controller, action: #selector(UIViewController.ksdoneClicked(_:)))
        buttonDone.tintColor = UIColor.black
        setItems([buttonflexible, buttonDone], animated: true)
    }
    private func setup2(view:UIView) {
        barStyle = UIBarStyle.default
        sizeToFit()
        let buttonflexible = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let buttonDone = UIBarButtonItem(title: "完成", style: UIBarButtonItem.Style.done, target: view, action: #selector(UIView.ksdoneClicked(_:)))
        buttonDone.tintColor = UIColor.black
        setItems([buttonflexible, buttonDone], animated: true)
    }
 
}
extension UIView {
    @objc func ksdoneClicked(_ sender: UIBarButtonItem) {
        self.endEditing(true)
        self.resignFirstResponder()
    }
    
}

extension UIViewController {
    @objc func ksdoneClicked(_ sender: UIBarButtonItem) {
        self.view.endEditing(true)
    }
}
