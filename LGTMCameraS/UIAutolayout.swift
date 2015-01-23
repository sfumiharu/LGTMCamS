//
//  Autolayout.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2015/01/10.
//  Copyright (c) 2015年 fumiharu. All rights reserved.
//

import Foundation
import UIKit

class UIAutolayoutClass : UIViewController{

    func firstTabViewLayout(#parrentView:UIView, childView:UIView) {
        
        childView.setTranslatesAutoresizingMaskIntoConstraints(false)
        parrentView.addSubview(childView)
        
        let blueTopConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Top,
            multiplier: 1,
            constant: parrentView.frame.size.height / 1.2)
        
        let blueBottomConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Bottom,
            multiplier: 1,
            constant: 0)
        
        let blueLeftConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Left,
            multiplier: 1,
            constant: 0)
        
        let blueRightConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Right,
            multiplier: 1,
            constant: 0)
        
        parrentView.addConstraints([blueTopConstraint, blueBottomConstraint, blueLeftConstraint, blueRightConstraint]);
    }

    
    func takeBtnLayout(#parrentView:UIView, childView:UIView) {

        childView.setTranslatesAutoresizingMaskIntoConstraints(false)
        parrentView.addSubview(childView)
        
        let blueTopConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Top,
            multiplier: 1,
            constant: parrentView.frame.size.height / 1.2)
        
        let blueBottomConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Bottom,
            multiplier: 1,
            constant: 0)
        
        let blueLeftConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Left,
            multiplier: 1,
            constant: 10)
        
        let blueRightConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Right,
            multiplier: 1,
            constant: -30)
        
        parrentView.addConstraints([blueTopConstraint, blueBottomConstraint, blueLeftConstraint, blueRightConstraint]);
    }
    

    func previewLayerLayout(#parrentView:UIView, childView:UIView) {
        
        childView.setTranslatesAutoresizingMaskIntoConstraints(false)
        parrentView.addSubview(childView)
        
        let blueTopConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Top,
            multiplier: 1,
            constant: 0)
        
        let blueBottomConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Bottom,
            multiplier: 1,
            constant: 0)
        
        let blueLeftConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Left,
            multiplier: 1,
            constant: 0)
        
        let blueRightConstraint:NSLayoutConstraint = NSLayoutConstraint(
            item:childView,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: parrentView,
            attribute: .Right,
            multiplier: 1,
            constant: 0)
        
        parrentView.addConstraints([blueTopConstraint, blueBottomConstraint, blueLeftConstraint, blueRightConstraint]);
    }
}
