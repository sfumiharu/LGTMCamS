//
//  setupCapture.swift
//  LGTMCameraS
//
//  Created by fumiharu on 2015/01/18.
//  Copyright (c) 2015年 fumiharu. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class setupCapture {

    var alc:UIViewClass = UIViewClass()
    var stillImageOutPut:AVCaptureStillImageOutput = AVCaptureStillImageOutput()
    var conn:AVCaptureConnection = AVCaptureConnection()
    var deviceOrientation:UIDeviceOrientation = UIDevice.currentDevice().orientation
    
    func setupCaputures() {
        var session:AVCaptureSession = AVCaptureSession()
        
        var camera:AVCaptureDevice = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        var videoInput:AVCaptureDeviceInput = AVCaptureDeviceInput.deviceInputWithDevice(camera, error:nil) as AVCaptureDeviceInput

//    create input of camera. add camera to session.
        if session.canAddInput(videoInput) {
            session.addInput(videoInput)
        }
        
//    UIVIewへの出力を作成し、sessionに追加

        session.addOutput(stillImageOutPut)
        
        var captureVideoPreviewLayer:AVCaptureVideoPreviewLayer = AVCaptureVideoPreviewLayer.self(session: session)
     
        captureVideoPreviewLayer.frame = alc.previewLayer().frame
        captureVideoPreviewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        
//        setVideoOrientation()

        var previewLayer:CALayer = CALayer()
        previewLayer = alc.previewLayer().layer
        previewLayer.masksToBounds = true
        previewLayer.addSublayer(captureVideoPreviewLayer)
        
        session.startRunning()
    }
    
//    func setVideoOrientation() {
//        for conn in  stillImageOutPut.connections {
//            if conn.supportsVideoOrientation {
//                conn.videoOrientation = videoOrientation()
//            }
//        }
//    }
    
//    func videoOrientation() -> AVCaptureVideoOrientation {
//        switch deviceOrientation {
//        case .LandscapeLeft:        return .LandscapeRight
//        case .LandscapeRight:       return .LandscapeLeft
//        case .Portrait:             return .Portrait
//        case .PortraitUpsideDown:   return .PortraitUpsideDown
//        case .FaceUp:               return .Portrait
//        case .FaceDown:             return .Portrait
//        case .Unknown:              return .Portrait
//        }
//    }
}

