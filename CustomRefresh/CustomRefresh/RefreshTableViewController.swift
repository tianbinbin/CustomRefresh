//
//  RefreshTableViewController.swift
//  CustomRefresh
//
//  Created by 田彬彬 on 2017/5/15.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit

private let kReftshViewHeight:CGFloat = 200

class RefreshTableViewController: UITableViewController {

    private var RefreshView:refreshView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /**
           contensize 呈现的界面
           conteninset  外部偏移量所留的区域
           contenoffset y 偏移量
         */

        
        RefreshView = refreshView(frame: CGRect(x: 0, y: -kReftshViewHeight, width: view.bounds.width, height: kReftshViewHeight), scrollview: self.view as! UIScrollView)
        
        view.insertSubview(RefreshView, at: 0)
    
    }

    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        RefreshView.scrollViewDidScroll(scrollView)
        
    }
    


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)

        
        cell.textLabel?.text = "第\(indexPath.row)行"
        
        return cell
    }
   
}
