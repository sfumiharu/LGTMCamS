//
//  UIViewExtention.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2015/01/18.
//  Copyright (c) 2015年 fumiharu. All rights reserved.
//

import Foundation
import UIKit

class UIButtonClass {
    func setTakeBtn() -> UIButton {
        let takeBtn:UIButton = UIButton.buttonWithType(.Custom) as UIButton
        takeBtn.frame = CGRectMake(0, 0, 50, 50)
        takeBtn.layer.position = CGPoint(x: 50, y: 50)
        takeBtn.addTarget(self, action: "tapped", forControlEvents: .TouchUpInside)
        takeBtn.setBackgroundImage(UIImage(named: "take.png"), forState: .Normal)
        return takeBtn
    }
}