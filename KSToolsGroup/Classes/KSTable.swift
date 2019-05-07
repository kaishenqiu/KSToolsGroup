//
//  KSTable.swift

import UIKit

// Framework Zone
typealias  OnCellData = (_ cell : UITableViewCell ,_ obj : Any)->Void
class KSTable: UITableView,UITableViewDataSource,UITableViewDelegate {

    public var onCellData: OnCellData?
    public var  ds: [[Any]]?
    private var identifier:String?

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)

    }
    convenience init(frame: CGRect, style: UITableViewStyle? = .plain, identifier:String) {
        self.init(frame: frame, style: style!)
        self.initDelegateAndCell(identifier)
    }

    private func initDelegateAndCell(_ identifier:String) {
        self.identifier = identifier
        register(UINib.init(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
        self.dataSource = self
        self.delegate = self

    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func numberOfSections(in: UITableView) -> Int {
        return ds!.count
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ds![section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let arr = ds!
        guard let cell  = dequeueReusableCell(withIdentifier: identifier!)  else {
            fatalError("Could not create Cell")
        }
        loadCell(cell,arr[indexPath.section][indexPath.row])
        return cell
    }
    func loadCell(_ cell : UITableViewCell,_ item : Any){
        onCellData?(cell,item)
    }
}
