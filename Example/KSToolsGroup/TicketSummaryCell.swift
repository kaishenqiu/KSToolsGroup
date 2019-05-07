//
//  TicketSummaryCell.swift
//  ANOA
//
//  Created by 邱仙凯 on 2018/12/4.
//  Copyright © 2018 zwb. All rights reserved.
//

import UIKit

class TicketSummaryCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    @IBOutlet weak var lab5: UILabel!
    @IBOutlet weak var btn1: UIButton!
//    var one = TicketModel(json: "") {
//        didSet {
//            lab1.text = one.fInvoicetypeNm ?? "发票类型"
//            lab2.text = "￥\(one.fTotalamount ?? 0)"
//            lab3.text = "录入时间: \(one.fCreatetime ?? "暂无")"
//            lab4.text = "开票日期: \(one.fInvoicedate ?? "暂无")"
//            lab5.text = "流水号:\(one.fRecordnum ?? "暂无")"
//            if one.fCheckstate == 1 {
//                btn1.setTitle("已查验", for: .normal)
//                btn1.layer.borderColor = Theme.ORANGE.cgColor
//                btn1.setTitleColor(Theme.ORANGE, for: .normal)
//            } else {
//                btn1.setTitle("未查验", for: .normal)
//                btn1.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).cgColor
//                btn1.setTitleColor(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), for: .normal)
//            }
//        }
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btn1.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btn1.setTitle("查验状态", for: UIControl.State())
        btn1.layer.borderWidth = 1
//        btn1.layer.borderColor = Theme.ORANGE.cgColor
        btn1.layer.cornerRadius = 5
//        btn1.setTitleColor(Theme.ORANGE, for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
