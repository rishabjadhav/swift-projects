//
//  ViewController.swift
//  Xylophone
//
//  Created by Rishab Jadhav on 12/1/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //
    @IBAction func hitC(_ sender: Any) {playC()}
    func playC() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    //
    @IBAction func hitD(_ sender: Any) {playD()}
    func playD() {
        let url = Bundle.main.url(forResource: "D", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    //
    @IBAction func hitE(_ sender: Any) {playE()}
    func playE() {
        let url = Bundle.main.url(forResource: "E", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    //
    @IBAction func hitF(_ sender: Any) {playF()}
    func playF() {
        let url = Bundle.main.url(forResource: "F", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    //
    @IBAction func hitG(_ sender: Any) {playG()}
    func playG() {
        let url = Bundle.main.url(forResource: "G", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    //
    @IBAction func hitA(_ sender: Any) {playA()}
    func playA() {
        let url = Bundle.main.url(forResource: "A", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    //
    @IBAction func hitB(_ sender: Any) {playB()}
    func playB() {
        let url = Bundle.main.url(forResource: "B", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

