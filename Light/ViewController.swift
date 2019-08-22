//
//  ViewController.swift
//  Light
//
//  Created by Aleksey Peredreev on 21/08/2019.
//  Copyright © 2019 RISORSA. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        let device = AVCaptureDevice.default(for: .video)
        
        if let device = device {
            do {
                try device.lockForConfiguration()
                device.torchMode = lightOn ? .on : .off
                device.unlockForConfiguration()
                view.backgroundColor = .black
            } catch {
                print(error)
            }
        } else {
            view.backgroundColor = lightOn ? .white : .black
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
}

