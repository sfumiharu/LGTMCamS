//
//  FirstTabViewController.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2014/12/13.
//  Copyright (c) 2014年 fumiharu. All rights reserved.
//

import Foundation
import UIKit

class setupFirstTabView {
    
    var layout: UIAutolayoutClass = UIAutolayoutClass()
    
    func addFirstTabView(view: UIView) -> UIView {
        return layout.firstTabViewLayout(view)
    }
}