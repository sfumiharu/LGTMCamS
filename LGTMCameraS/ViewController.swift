//
//  ViewController.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2014/12/13.
//  Copyright (c) 2014年 fumiharu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //get front camera info
        var sft:setupView = setupView()
        var setaa:setupCapture = setupCapture()
        
        self.view.addSubview(sft.addPreviewLayer(self.view))
        sft.addPreviewLayer(self.view).addSubview(sft.addFirstTabView(self.view))
        
        setaa.setupCaputures()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


