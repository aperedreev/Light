//
//  ViewController.swift
//  Light
//
//  Created by Aleksey Peredreev on 21/08/2019.
//  Copyright © 2019 RISORSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = false
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn = !lightOn
        
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

