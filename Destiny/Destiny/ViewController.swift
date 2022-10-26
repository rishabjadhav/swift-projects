//
//  ViewController.swift
//  Destiny
//
//  Created by Rishab Jadhav on 10/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var roomInfo: UILabel!
    @IBOutlet weak var ChoiceA: UIButton!
    @IBOutlet weak var ChoiceB: UIButton!
    var game = Destiny()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
    }
    
    func reload() {
        roomInfo.text = game.getTitle()
        ChoiceA.setTitle(game.getChoice1(), for: .normal)
        ChoiceB.setTitle(game.getChoice2(), for: .normal)
    }
    
    @IBAction func ASelected(_ sender: Any) {
        game.currentStory = game.stories[game.currentStory].choice1index
        reload()
    }
    
    @IBAction func BSelected(_ sender: Any) {
        game.currentStory = game.stories[game.currentStory].choice2index
        reload()
    }
    
}

