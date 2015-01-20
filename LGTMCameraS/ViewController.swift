//
//  ViewController.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2014/12/13.
//  Copyright (c) 2014年 fumiharu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var previewLayer:UIView = UIView(frame: CGRectMake(0, 0, 200, 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //get front camera info
        var aa:setupFirstTabView = setupFirstTabView()
        
        previewLayer = aa.addFirstTabView(self.view)
        self.view.addSubview(previewLayer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


