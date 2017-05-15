//
//  refreshView.swift
//  CustomRefresh
//
//  Created by 田彬彬 on 2017/5/15.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit

private let kScreenHeight :CGFloat = 120.0

class refreshView: UIView,UIScrollViewDelegate {


    private unowned var scrollview:UIScrollView
    private var progress:CGFloat = 0.0
    var refreshItems = [RefreshItem]()
    
    init(frame: CGRect,scrollview:UIScrollView) {
        
        self.scrollview = scrollview
        super.init(frame: frame)
        updataBackGroudColor()
    }
    
    required init(coder aDecoder:NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func updataBackGroudColor()  {
        
        backgroundColor = UIColor(white: 0.7*progress+0.2, alpha: 1 )
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let refresgViewVisable = max(0, -scrollView.contentOffset.y - scrollView.contentInset.top
)
        progress = min(1, refresgViewVisable/kScreenHeight)
        updataBackGroudColor()
        
    }
    
}
