//
//  ViewController.swift
//  FrontloopsElement02
//
//  Created by Jinwook Kim on 2021/04/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    @IBOutlet weak var switch5: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateContainer()
    }
    func updateContainer() {
        self.container.layer.cornerRadius = 10.0
        self.container.layer.shadowColor = UIColor.darkGray.cgColor
        self.container.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        self.container.layer.shadowRadius = 10.0
        self.container.layer.shadowOpacity = 0.7
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender == self.switch1 {
            self.switch1.setOn(true, animated: true)
            self.switch3.setOn(true, animated: true)
        }
        if sender == self.switch2 {
            self.switch2.setOn(true, animated: true)
            self.switch4.setOn(true, animated: true)
            self.switch1.setOn(false, animated: true)
            self.switch3.setOn(false, animated: true)
        }
        if sender == self.switch3 {
            self.switch3.setOn(true, animated: true)
            self.switch1.setOn(true, animated: true)
            self.switch2.setOn(false, animated: true)
            self.switch5.setOn(false, animated: true)
        }
        if sender == self.switch4 {
            self.switch4.setOn(true, animated: true)
        }
        if sender == self.switch5 {
            self.switch5.setOn(true, animated: true)
            self.switch4.setOn(false, animated: true)
        }
    }
}

