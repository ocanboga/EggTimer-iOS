//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 500, "Hard": 700]
    var egg = 60
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        egg = eggTimes[hardness]!
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    @objc func updateCounter() {
        //example functionality
        if egg > 0 {
            print("\(egg) seconds to the end of the world")
            egg -= 1
        }
        
        
        
    }
    
}
