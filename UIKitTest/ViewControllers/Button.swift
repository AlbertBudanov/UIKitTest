//
//  Button.swift
//  UIKitTest
//
//  Created by Альберт on 23.10.2020.
//

import UIKit

class Button: UIViewController {

//    @IBOutlet var myButtons: [UIButton]!
    
    var myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton = UIButton(type: .roundedRect)
        myButton.frame = CGRect(x: 110, y: 200, width: 100, height: 44)
        myButton.setTitle("Press me", for: .normal)
//        кнопка нажата
        myButton.setTitle("I'm pressed", for: .highlighted)
        myButton.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchDown)
        myButton.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: .touchUpInside)
        self.view.addSubview(myButton)
        
//        for button in myButtons {
//            button.backgroundColor = .green
//        }

    }
    
    
    @objc func buttonPressed(sender: UIButton) {
        print("Button is pressed")
    }
    
    @objc func buttonIsTapped(sender: UIButton) {
        print("Button is tapped")
    }
//    @IBAction func buttonAction(_ sender: Any) {
//        let button = sender as! UIButton
//        if button.titleLabel?.text == "Button1" {
//            print("Это первая кнопка")
//        } else if button.tag == 3 {
//            print("Это кнопка 3")
//        }
//        switch button.tag {
//        case 3:
//            print("3я конпошка")
//        default:
//            print("не 3я")
//        }
    }
