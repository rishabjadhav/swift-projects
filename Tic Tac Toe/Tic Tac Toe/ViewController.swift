//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Rishab Jadhav on 10/17/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    var turnX = "X"
    var turnO = "O"
    
    var currentTurn = "X"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        print("clicked")
        playerSelect(sender)
    }
    
    func playerSelect(_ sender: UIButton) {
        if (sender.title(for: .normal) == nil) {
            if (currentTurn == "X") {
                sender.setTitle("X", for: .normal)
                currentTurn = "O"
            } else {
                sender.setTitle("O", for: .normal)
                currentTurn = "X"
            }
        }
    }
    @IBAction func reset(_ sender: Any) {
        a1.setTitle(nil, for: .normal)
        a2.setTitle(nil, for: .normal)
        a3.setTitle(nil, for: .normal)
        b1.setTitle(nil, for: .normal)
        b2.setTitle(nil, for: .normal)
        b3.setTitle(nil, for: .normal)
        c1.setTitle(nil, for: .normal)
        c2.setTitle(nil, for: .normal)
        c3.setTitle(nil, for: .normal)
    }
}

