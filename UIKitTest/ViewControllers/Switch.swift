//
//  Switch.swift
//  UIKitTest
//
//  Created by Альберт on 17.10.2020.
//

import UIKit

class Switch: UIViewController {
    
    let mySwitch = UISwitch()
    let myButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.myButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        self.myButton.backgroundColor = .orange
        self.myButton.setTitle("OKE", for: .normal)
        self.myButton.setTitle("TOUCHES", for: .highlighted)
        self.view.addSubview(myButton)
        
        self.mySwitch.frame = CGRect.zero
        self.mySwitch.center = self.view.center
        self.mySwitch.isOn = true
        self.view.addSubview(mySwitch)
        
        self.mySwitch.addTarget(self, action: #selector(switchON(target:)), for: .valueChanged)
        
        
    }
    
    @objc func switchON(target: UISwitch) {
        if mySwitch.isOn {
            self.myButton.isUserInteractionEnabled = true } else {
                self.myButton.isUserInteractionEnabled = false
        }
    }
    
    }
    

