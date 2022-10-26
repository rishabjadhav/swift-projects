//
//  ViewController.swift
//  Whack a Mole
//
//  Created by Rishab Jadhav on 9/13/22.
//
 
import UIKit
 
class ViewController: UIViewController {
    
    var screenWidth = 390
    var screenHeight = 844
    var score = 0
    
    var scoreBox = UILabel()
    var field = UILabel()
    var mole = UIButton()
    var timer = Timer()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        field.frame =  CGRect(x: 20, y: 100, width: screenWidth-40, height: 50)
        field.backgroundColor = UIColor.green
        field.text = "Screen width: \(screenWidth), Label width: \(screenWidth-40)"
    
        view.addSubview(field)
        self.view = view
        
        scoreBox.frame =  CGRect(x: 20, y: 100, width: screenWidth-40, height: 50)
        scoreBox.backgroundColor = UIColor.systemGray
        scoreBox.text = "Screen width: \(screenWidth), Label width: \(screenWidth-40)"
    
        view.addSubview(scoreBox)
        self.view = view
        
        if (score == 0){
            mole.frame = CGRect (x: 50 , y: 225 , width: 40 , height: 40)
            mole.setTitle("Start", for: .normal)
        } else {
            mole.frame = CGRect (x: Int.random(in: 30..<screenWidth-40) , y: Int.random(in: 195..<screenHeight-40) , width: 40 , height: 40)
        }
       
        mole.layer.cornerRadius = 20 // make radius 1/2 width
        mole.backgroundColor = UIColor.brown
        mole.setTitle (" " , for: .normal)
        mole.addTarget (self, action:#selector(moleClicked),for:.touchUpInside)
        view.addSubview(mole)
        self.view = view
    
        
        
    }
    
    @objc func timerFunction(){
        mole.removeFromSuperview()
        mole.frame = CGRect (x: Int.random(in: 30..<screenWidth-40) , y: Int.random(in: 195..<screenHeight-40) , width: 40 , height: 40)
        view.addSubview(mole)
        score -= 1
    }
    
    @objc func moleClicked() {
        timer.invalidate()
        if (score == 0) {
            timer = Timer.scheduledTimer(timeInterval: 1.5 , target: self , selector: #selector (timerFunction), userInfo: nil , repeats: true)
            mole.setTitle (" " , for: .normal)
        }
        score += 1
        mole.removeFromSuperview()
        mole.frame = CGRect (x: Int.random(in: 30..<screenWidth-40) , y: Int.random(in: 195..<screenHeight-40) , width: 40 , height: 40)
        view.addSubview(mole)
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 2.0 , target: self , selector: #selector (timerFunction), userInfo: nil , repeats: true)
    }
                        
        
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let screenBounds: CGRect = UIScreen.main.bounds
        
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        field.frame = CGRect(x: 0, y: 175, width : screenWidth, height: screenHeight)
        field.text = "  "
        
        
        scoreBox.frame = CGRect(x: 25, y: 70, width : screenWidth - 90, height: screenHeight/10)
        scoreBox.text = "     Score : \(score)"

        
        
    }
 
 
}
 

