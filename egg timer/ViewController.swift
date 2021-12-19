//
//  ViewController.swift
//  egg timer
//
//  Created by John-Marc Attis on 10/20/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    
    
var eggTime = ["Hard" : 10, "Medium" : 7, "Soft" : 4] //Dictionary

        var startTime = 0
        var totalTime = 0

    
    var timer = Timer()

    
    
    @IBAction func clickMe(_ sender: UIButton) {
        timer.invalidate()
        
        progressView.progress = 0.0
        startTime = 0
        
       
        let hardness = sender.currentTitle!
        
        
        print(hardness)
        
        totalTime = eggTime[hardness]!
        
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if startTime < totalTime {
            
            startTime += 1
            progressView.progress = Float(startTime)/(Float(totalTime))
        }
        else{
            outputLabel.text = "Eggs are ready!"
            timer.invalidate()
        }
    }
}

