//
//  UIViewExtention.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2015/01/18.
//  Copyright (c) 2015年 fumiharu. All rights reserved.
//

import Foundation
import UIKit

class UIViewClass : UIAutolayoutClass {
    

    
    func takeBtn(view:UIView) -> UIButton {
        let takeBtn:UIButton = UIButton.buttonWithType(.Custom) as UIButton
        takeBtn.frame = CGRectMake(0, 0, 10, 10)
        takeBtn.addTarget(self, action: "tapped", forControlEvents: .TouchUpInside)
        takeBtn.setBackgroundImage(UIImage(named: "take.png"), forState: .Normal)
        takeBtnLayout(parrentView: view, childView: takeBtn)
        return takeBtn
    }

    func firstTabBaseView() -> UIView {
        let fst:UIView = UIView()
        fst.backgroundColor = UIColor.redColor()
        takeBtn(fst)
        return fst
    }
    
//    func previewLayer() -> UIView{
//        pLayer.backgroundColor = UIColor.greenColor()
//        return pLayer
//    }
}