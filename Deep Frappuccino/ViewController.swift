//
//  ViewController.swift
//  Deep Frappuccino
//
//  Created by Shota Shimazu on 2018/10/31.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit
import Coeur
import AVFoundation


class ViewController: UIViewController {

    
    var input: AVCaptureDeviceInput!
    var output: AVCapturePhotoOutput!
    var session: AVCaptureSession!
    var camera: AVCaptureDevice!

    
    /// View Elements
    @IBOutlet weak var cameraView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupCamera()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        // TODO: Free memory
    }

    @IBAction func captureCamera(_ sender: Any) {
        // TODO: Do something when capture button tapped.
    }
}



extension ViewController {
    
    fileprivate func setupCamera() {
        
        /// Session
        session = AVCaptureSession()
        
        /// Select back camera
        camera = AVCaptureDevice.default(AVCaptureDevice.DeviceType.builtInWideAngleCamera,
                                         for: AVMediaType.video, position: .back)
        

        do {
            input = try AVCaptureDeviceInput(device: camera)
            
        } catch let error as NSError {
            Alert.confirm(message: "Camera device error has been occurred! \(error)")
        }
    }
}
