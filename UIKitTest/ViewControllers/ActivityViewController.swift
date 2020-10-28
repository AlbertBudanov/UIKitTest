//
//  ActivityViewController.swift
//  UIKitTest
//
//  Created by Альберт on 19.10.2020.
//

import UIKit

class ActivityViewController: UIViewController {

    var buttonShared = UIButton()
    var textField = UITextField()
    var activityVC: UIActivityViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTextField()
        createButton()
        
    }

//    MARK: Methods
    
    func createTextField() {
        self.textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        self.textField.center = self.view.center
//        self.textField.delegate = self
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.textField.placeholder = "Enter text to share"
        self.view.addSubview(textField)
    }
    
    func createButton() {
        self.buttonShared = UIButton(type: .roundedRect)
        self.buttonShared.frame = CGRect(x: 50, y: 300, width: 280, height: 44)
        self.buttonShared.setTitle("Share", for: .normal)
        self.buttonShared.addTarget(self, action: #selector(handleShare), for: .touchUpInside)
        self.buttonShared.backgroundColor = .red
        self.view.addSubview(buttonShared)
}
    
    @objc func handleShare(paramSender: Any) {
        let text = self.textField.text
        if text?.count == 0 {
            let message = "Write a text"
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
        self.activityVC = UIActivityViewController(activityItems: [self.textField.text ?? nil], applicationActivities: nil)
        self.present(self.activityVC!, animated: true, completion: nil)
    }
    
//    @objc func buttonTapped(do: UIButton) {
//        print("Hello")
//    }
}

//extension ActivityViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        self.textField.resignFirstResponder()
//        return true
//    }
//}
