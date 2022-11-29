//
//  ViewController.swift
//  RGB Matcher
//
//  Created by Rishab Jadhav on 11/8/22.
//

import UIKit

class ViewController: UIViewController {
   
    var score = 73
    @IBOutlet weak var userColor: UILabel!
    @IBOutlet weak var randColor: UILabel!
    
    @IBOutlet weak var RSlider: UISlider!
    @IBOutlet weak var GSlider: UISlider!
    @IBOutlet weak var BSlider: UISlider!
    
    @IBOutlet weak var timerLabel: UILabel!
    var timeRemaining : Int = 10
    var timer : Timer!
    var running : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userColor.layer.borderColor = CGColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        randColor.layer.borderColor = CGColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        userColor.layer.borderWidth = 2
        randColor.layer.borderWidth = 2
        
        randColor.layer.backgroundColor = CGColor.init(red: CGFloat.random(in: 0..<1), green: CGFloat.random(in: 0..<1), blue: CGFloat.random(in: 0..<1), alpha: 1)
        
        RSlider.minimumValue = 0
        RSlider.maximumValue = 1
        GSlider.minimumValue = 0
        GSlider.maximumValue = 1
        BSlider.minimumValue = 0
        BSlider.maximumValue = 1
    }
    
    
    func startTimer() {
        running = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(step), userInfo: nil, repeats: true)
    }
    
    @objc func step() {
        if timeRemaining > 0 {
            timeRemaining = timeRemaining - 1
        } else {
            timer.invalidate()
            running = false
            timeRemaining = 10
            
            let alert = UIAlertController(title: "Round over!", message: "Your score was \(score).", preferredStyle: UIAlertController.Style.alert)

                    alert.addAction(UIAlertAction(title: "Play again.", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
        }
        timerLabel.text = "Timer: \(timeRemaining)"
    }
    
    @IBAction func updateColor(_ sender: Any) {
        if (running == false) {
            startTimer()
        }
        
        userColor.layer.backgroundColor = CGColor.init(red: CGFloat(RSlider.value), green: CGFloat(GSlider.value), blue: CGFloat(BSlider.value), alpha: 1)
    }
    


}

