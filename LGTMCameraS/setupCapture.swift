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

class setupCapture : UIViewClass, AVCaptureVideoDataOutputSampleBufferDelegate {

    var alc:createView = createView()
    var vc:ViewController = ViewController()
    var stillImageOutPut: AVCaptureStillImageOutput = AVCaptureStillImageOutput()
//    var connn: AVCaptureConnection = AVCaptureConnection()
//    var deviceOrientation:UIDeviceOrientation = UIDevice.currentDevice().orientation
    
    func setupCaputures() {
        var session = AVCaptureSession()
        session.sessionPreset == AVCaptureSessionPresetPhoto
        
        var captureDevice = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        
        var err: NSErrorPointer = nil
        var videoInput: AVCaptureInput = AVCaptureDeviceInput.deviceInputWithDevice(captureDevice, error:err) as AVCaptureInput

//    create input of camera. add camera to session.
        if session.canAddInput(videoInput) {
            session.addInput(videoInput)
        }else{
            println("あああ")
        }
        
//    UIVIewへの出力を作成し、sessionに追加

        session.addOutput(stillImageOutPut)
        
        var captureVideoPreviewLayer = AVCaptureVideoPreviewLayer.layerWithSession(session) as AVCaptureVideoPreviewLayer
     
        captureVideoPreviewLayer.frame = alc.pLayer.frame
        captureVideoPreviewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        
//        setVideoOrientation()

        var previewLayer:CALayer = CALayer()
        previewLayer = alc.pLayer.layer
        previewLayer.masksToBounds = true
        previewLayer.addSublayer(captureVideoPreviewLayer)
        
        session.startRunning()
        
        println("pathh")
    }
    
    
//    func configureCamera() -> Bool {
//        // init camera device
//        var captureDevice: AVCaptureDevice?
//        var devices: NSArray = AVCaptureDevice.devices()
//        
//        // find back camera
//        for device: AnyObject in devices {
//            if device.position == AVCaptureDevicePosition.Back {
//                captureDevice = device as? AVCaptureDevice
//            }
//        }
//        
//        
        // init device input
//        var error: NSErrorPointer!
//        var deviceInput: AVCaptureInput = AVCaptureDeviceInput.deviceInputWithDevice(captureDevice, error: error) as AVCaptureInput
//        
//        self.stillImageOutput = AVCaptureStillImageOutput()
        
        // init session
//        self.session = AVCaptureSession()
//        self.session.sessionPreset = AVCaptureSessionPresetPhoto
//        self.session.addInput(deviceInput as AVCaptureInput)
//        self.session.addOutput(self.stillImageOutput)
        
        // layer for preview
//        var previewLayer: AVCaptureVideoPreviewLayer = AVCaptureVideoPreviewLayer.layerWithSession(self.session) as AVCaptureVideoPreviewLayer
//        previewLayer.frame = self.view.bounds
//        self.view.layer.addSublayer(previewLayer)
        
//        self.session.startRunning()
//        
//        return true
//    }

    
//    func setVideoOrientation() {
//        for conn in stillImageOutPut.connections {
//            if connn.supportsVideoOrientation {
//                connn.videoOrientation = videoOrientation()
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

