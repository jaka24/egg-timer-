//
//  ViewController.swift
//  egg timer
//
//  Created by John-Marc Attis on 10/20/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var outputlabel: UILabel!
    
    @IBOutlet weak var progressview: UIProgressView!
    
    
    
var eggTimes = ["Hard" : 10, "Medium" : 7, "Soft" : 4] //Dictionary

        var starttime = 0
        var totaltime = 0

    
    var timer = Timer()

        @IBAction func clickme(_ sender: UIButton) {
       
            
            timer.invalidate()
            progressView.progress = 0.0
            startTime = 0
        
            let hardness = sender.currentTitle!
            print(hardness)
            
totaltime = eggTimes[hardness]! //10 7 4
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)

    }


@objc func updateCounter() {
   
        if starttime < totalTime  {
            
           
            starttime += 1
            progressView.progress= Float(startTime)/Float(totalTime)
            
        
            else do {
            
            outputLabel.text = "Eggs are ready!"
           .self.timer.invalidate()
        }
            }

}}}
}
