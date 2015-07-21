//
//  BezierPathsView.swift
//  DropitSwift
//
//  Created by jianwei on 15/7/21.
//  Copyright (c) 2015年 Jianwei. All rights reserved.
//

import UIKit

class BezierPathsView: UIView {
    
    private var bezierPaths = [String:UIBezierPath]()
    
    func setPath(path:UIBezierPath?, named name:String){
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        for (_,path) in bezierPaths{
            path.stroke()
        }
    }

}
