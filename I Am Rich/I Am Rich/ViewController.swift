//
//  ViewController.swift
//  I Am Rich
//
//  Created by Rishab Jadhav on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var richPoorButton: UIButton!
    @IBOutlet weak var richPoorText: UILabel!
    @IBOutlet weak var richPoorImage: UIImageView!
    var rich = true

    override func viewDidLoad() {
        super.viewDidLoad()
        richOrPoor()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func richOrPoor() {
        richPoorText.font = richPoorText.font.withSize(50)
        richPoorText.textColor = UIColor.white
        if (rich) {
            view.backgroundColor = .black
            richPoorText.textColor = UIColor.white
            richPoorButton.setTitle("", for: .normal)
            richPoorText.text = "I AM RICH :D"
            richPoorImage.image = UIImage(named:"IAMRICH")
        } else {
            view.backgroundColor = .white
            richPoorText.textColor = UIColor.black
            richPoorText.text = "I AM POOR :("
            richPoorImage.image = UIImage(named:"IAMPOOR")
        }
    }
    
    @IBAction func richPoorButton(_ sender: Any) {
        rich.toggle()
        
        richOrPoor()
    }
    
}

