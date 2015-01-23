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

        var sft:createView = createView()
        sft.createPreviewLayer(self.view)
        sft.creatFirstTabView(self.view)
        
        var sss:setupCapture = setupCapture()
        sss.setupCaputures()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


