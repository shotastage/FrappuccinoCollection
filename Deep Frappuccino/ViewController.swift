//
//  ViewController.swift
//  Deep Frappuccino
//
//  Created by Shota Shimazu on 2018/10/31.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    
    var input: AVCaptureDeviceInput!
    var output: AVCapturePhotoOutput!
    var session: AVCaptureSession!

    
    /// View Elements
    @IBOutlet weak var cameraView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
