//
//  Autolayout.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2015/01/10.
//  Copyright (c) 2015年 fumiharu. All rights reserved.
//

import Foundation
import UIKit

class UIAutolayoutClass {
    
    func firstTabViewLayout(view:UIView) -> UIView{
        var ftv = UIView()
        var bc = UIButtonClass()
        
        ftv.backgroundColor = UIColor.redColor()
        ftv.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(ftv)
        ftv.addSubview(bc.setTakeBtn())
        
        let blueTopConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:ftv,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1,
            constant: view.frame.size.height / 1.2)
        
        let blueBottomConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:ftv,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Bottom,
            multiplier: 1,
            constant: 0)
        
        let blueLeftConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:ftv,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Left,
            multiplier: 1,
            constant: 0)
        
        let blueRightConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:ftv,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Right,
            multiplier: 1,
            constant: 0)
        
        view.addConstraints([blueTopConstraint, blueBottomConstraint, blueLeftConstraint, blueRightConstraint]);
        return ftv
    }

        var pl = UIView()
    func previewLayerLayout(view:UIView) -> UIView{

        pl.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(pl)
        
        let blueTopConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:pl,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1,
            constant: 0)
        
        let blueBottomConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:pl,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Bottom,
            multiplier: 1,
            constant: 0)
        
        let blueLeftConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:pl,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Left,
            multiplier: 1,
            constant: 0)
        
        let blueRightConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:pl,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Right,
            multiplier: 1,
            constant: 0)
        
        view.addConstraints([blueTopConstraint, blueBottomConstraint, blueLeftConstraint, blueRightConstraint]);
        return pl
    }
}
