//
//  KSMenuChooseView.swift
//  Slaughter
//
//  Created by 邱仙凯 on 2018/3/10.
//  Copyright © 2018年 zwb. All rights reserved.
//

import UIKit

public protocol KSMenuChooseDelegate: class {
    func ksMenuChoose(view:KSMenuChooseView,selectIndex:Int)
}

public class KSMenuChooseView: UIView {
    
   public weak var delegate: KSMenuChooseDelegate?
   private var chooseColor:UIColor?
   private var selectedBtn:UIButton?
   private var selectLine:UIView?

    public init(frame:CGRect,themecolor:UIColor,titles:Array<String>) {
        super.init(frame: frame)
        setupView(frame: frame, themecolor:themecolor, titles: titles)
    }
 
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(frame:CGRect,themecolor:UIColor, titles:Array<String>) {
        
        chooseColor = themecolor
        let width = frame.size.width / CGFloat(titles.count)
        let height = frame.size.height
        for i in 0..<titles.count {
            
            let button = UIButton(frame:CGRect(x:0 + CGFloat(i) * width, y:0, width:width, height:height - 1))
            button.setTitle(titles[i], for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            if i == 0 {
                 selectedBtn = button
                 button.setTitleColor(themecolor, for: .normal)
            } else {
                 button.setTitleColor(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1), for: .normal)
            }
            button.tag = i
            button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
            self.addSubview(button)
      
            
            let line = UIView(frame:CGRect(x:0 + CGFloat(i) * width, y:height - 1, width:width, height:1))
            if i == 0 {
                selectLine = line
                line.backgroundColor = themecolor
            } else {
                line.backgroundColor = .clear
            }
            line.tag = i + 100
            self.addSubview(line)
            
        }
 
    }
    
    @objc private func buttonAction(sender:UIButton) {
        selectedBtn = sender
            for subview in self.subviews {
                if subview .isKind(of: UIButton.self) {
                    let btn = subview as! UIButton
                     btn.setTitleColor(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1), for: .normal)
                }
                if subview .isKind(of: UIView.self) {
                    if subview.tag == (selectedBtn?.tag)! + 100 {
                          subview.backgroundColor = chooseColor
                    } else {
                          subview.backgroundColor = .clear
                    }
                 
                }
            }
        selectedBtn?.setTitleColor(chooseColor, for: .normal)
 
        
        delegate?.ksMenuChoose(view:self,selectIndex: sender.tag)
    }
 
}
