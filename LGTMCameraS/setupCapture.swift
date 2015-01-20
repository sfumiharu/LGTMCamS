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
    
    var vc:ViewController = ViewController()
    var stillImageOutPut:AVCaptureStillImageOutput = AVCaptureStillImageOutput()
    var conn:AVCaptureConnection = AVCaptureConnection()
    var deviceOrientation:UIDeviceOrientation = UIDevice.currentDevice().orientation //UIDeviceOrientation()
    
    func setupCaputures() {
        
        let error:NSErrorPointer = NSErrorPointer()
        var camera:AVCaptureDevice = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        var videoInput:AVCaptureDeviceInput = AVCaptureDeviceInput.deviceInputWithDevice(camera, error:error) as AVCaptureDeviceInput

//    create input of camera. add camera to session.
        var captureSession:AVCaptureSession = AVCaptureSession()
        if captureSession.canAddInput(videoInput) {
            captureSession.addInput(videoInput)
        }
        
//    UIVIewへの出力を作成し、sessionに追加

        captureSession.addOutput(stillImageOutPut)
        
        var captureVideoPreviewLayer:AVCaptureVideoPreviewLayer = AVCaptureVideoPreviewLayer.layerWithSession(captureSession)
     as AVCaptureVideoPreviewLayer
        captureVideoPreviewLayer.frame = vc.previewLayer.frame
        captureVideoPreviewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        
//        setVideoOrientation()
        
        var previewLayer:CALayer = CALayer()
        previewLayer = vc.previewLayer.layer
        previewLayer.masksToBounds = true
        previewLayer.addSublayer(captureVideoPreviewLayer)
        
        captureSession.startRunning()
    }
    
//    func setVideoOrientation() {
//        for conn in  stillImageOutPut.connections {
//            if conn.supportsVideoOrientation {
//                conn.videoOrientation = videoOrientation()
//            }
//        }
//    }
//    
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

