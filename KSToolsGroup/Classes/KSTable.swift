//
//  KSTable.swift
//
import UIKit

// Framework Zone
public typealias OnCellData = (_ cell : UITableViewCell ,_ obj : Any, _ index: IndexPath)->Void
public class KSTable: UITableView,UITableViewDataSource,UITableViewDelegate {

    var page = 1
    public var showCell: OnCellData?
    public var didSelected: ((_ obj : Any)->())?
    public var  ds: [[Any]]?
    private var identifier:String?
    public var network: ((_ page:Int)->())?
 
   public init(frame: CGRect, style: UITableView.Style? = .plain, identifier:String) {
        super.init(frame: frame, style: style!)
        self.initDelegateAndCell(identifier)
    }

    private func initDelegateAndCell(_ identifier:String) {
        ds = [[]]
        self.identifier = identifier
        register(UINib.init(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
        self.dataSource = self
        self.delegate = self
        tableFooterView = UIView()
        self.mj_header = KSRefreshHeader {
            self.page = 1
            self.networkfetchData()
        }
        self.mj_footer = KSRefreshFooter {
            self.page+=1
            self.networkfetchData()
        }

    }
    func networkfetchData() {
        if let block = self.network {
            block(self.page)
        }
    }
    public func showTableEndRefresh(_ lastCount:Int) {
        
        self.mj_header.endRefreshing()
        self.mj_footer.endRefreshing()
        self.reloadData()
        if lastCount < KSGlobal.pageSize {
            self.mj_footer.endRefreshingWithNoMoreData()
        }
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func numberOfSections(in: UITableView) -> Int {
        return ds!.count
    }
    private func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ds![section].count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let arr = ds!
        guard let cell  = dequeueReusableCell(withIdentifier: identifier!)  else {
            fatalError("Could not create Cell")
        }
        loadCell(cell,arr[indexPath.section][indexPath.row],indexPath)
        return cell
    }
    private func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let arr = ds!
        selectCell(arr[indexPath.section][indexPath.row])
        
    }
    func selectCell(_ item : Any){
        didSelected?(item)
    }
    func loadCell(_ cell : UITableViewCell,_ item : Any,_ indexP:IndexPath){
        showCell?(cell,item,indexP)
    }
}
