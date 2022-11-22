//
//  ViewController.swift
//  Business Card
//
//  Created by Rishab Jadhav on 10/25/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showAddInfo: UIButton!
    @IBOutlet weak var phoneInfo: UILabel!
    @IBOutlet weak var emailInfo: UILabel!
    var showLabel = true

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 1, green: 0.6, blue: 0.35, alpha: 1)
        let pic = UIImage.init(named: "rishabjadhav")
        let pfp = UIImageView(image: pic)
        pfp.frame = CGRect(x: 122, y: 150, width: 144, height: 144)
        pfp.layer.cornerRadius = pfp.frame.width / 2
        pfp.layer.borderWidth = 5
        pfp.layer.borderColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        pfp.layer.masksToBounds = true
        pfp.contentMode = UIView.ContentMode.scaleAspectFit
        view.addSubview(pfp)
        
        let name = UILabel.init(frame: CGRect(x: 70, y: 320, width: 300, height: 50))
        name.font = name.font.withSize(40)
        name.textColor = UIColor.black
        name.text = "Rishab Jadhav"
        view.addSubview(name)
        
        let title = UILabel.init(frame: CGRect(x: 30, y: 360, width: 400, height: 50))
        title.font = name.font.withSize(20)
        title.textColor = UIColor.black
        title.text = "Student at Independence High School"
        view.addSubview(title)
        
        let showAddInfo = UIButton.init(frame: CGRect(x: 80, y: 410, width: 220, height: 50))
        showAddInfo.setTitle("Tap to show contact info", for: .normal)
        showAddInfo.backgroundColor = UIColor.black
        showAddInfo.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        view.addSubview(showAddInfo)
        
    }
    
    @objc func buttonPressed(_ sender: UIButton?) {
        
        if (showLabel) {
            let phoneInfo = UILabel.init(frame: CGRect(x: 43, y: 500, width: 300, height: 60))
            phoneInfo.font = phoneInfo.font.withSize(20)
            phoneInfo.backgroundColor = UIColor.white
            phoneInfo.layer.cornerRadius = 30
            phoneInfo.layer.masksToBounds = true
            phoneInfo.textColor = UIColor.black
            phoneInfo.text = "Phone : XXX-XXX-XXXX"
            phoneInfo.textAlignment = NSTextAlignment.center
            view.addSubview(phoneInfo)
            
            let emailInfo = UILabel.init(frame: CGRect(x: 43, y: 580, width: 300, height: 60))
            emailInfo.font = emailInfo.font.withSize(20)
            emailInfo.backgroundColor = UIColor.white
            emailInfo.layer.cornerRadius = 30
            emailInfo.layer.masksToBounds = true
            emailInfo.textColor = UIColor.black
            emailInfo.text = "Email : johndoe@email.com"
            emailInfo.textAlignment = NSTextAlignment.center
            view.addSubview(emailInfo)
            showLabel.toggle()
        } else {
            phoneInfo.isHidden = true
            viewDidLoad()
            showLabel.toggle()
        }
    }


}


