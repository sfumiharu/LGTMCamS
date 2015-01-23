//
//  FirstTabViewController.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2014/12/13.
//  Copyright (c) 2014年 fumiharu. All rights reserved.
//

import Foundation
import UIKit

class createView : UIViewClass{
    override init() {
        
    }
        var pLayer:UIView = UIView()
    
    func creatFirstTabView(view:UIView) {
        firstTabViewLayout(parrentView: view, childView: firstTabBaseView())
    }
    
    func createPreviewLayer(view:UIView) {
        previewLayerLayout(parrentView: view, childView: pLayer)
    }
    
}




//-----------------------------------------------------------------



//class RecipeIngredient: Food {
//    var quantity: Int
//    init(name:String, quantity:Int){
//        self.quantity = quantity
//        super.init(name: name)
//    }
//    convenience init(name:String){
//        self.init(name:name, quantity:1)
//    }
//    convenience init(quantity:Int){
//        self.init()
//        self.quantity = quantity
//    }
//}
//
//class RecipeIngredient: Food {
//    var quantity: Int
//    init(name:String, quantity:Int){
//        self.quantity = quantity
//        super.init(name: name)
//    }
//    convenience init(name:String){
//        self.init(name:name, quantity:1)
//    }
//    convenience init(quantity:Int){
//        self.init(name:"unnamed", quantity:quantity)
//    }
//}