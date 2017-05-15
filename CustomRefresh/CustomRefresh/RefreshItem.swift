
//
//  RefreshItem.swift
//  CustomRefresh
//
//  Created by 田彬彬 on 2017/5/15.
//  Copyright © 2017年 田彬彬. All rights reserved.
//


import UIKit

class RefreshItem {

    private var centerStart : CGPoint
    private var centerEnd:CGPoint
    private var view:UIView
    

    init(view:UIView,centerEnd:CGPoint,parallaxRation:CGFloat,sceeneheight:CGFloat) {
        
        self.view = view;
        self.centerEnd = centerEnd
        centerStart = CGPoint(x: centerEnd.x, y: centerEnd.y+(parallaxRation*sceeneheight))
        self.view.center = centerStart
    }
}
