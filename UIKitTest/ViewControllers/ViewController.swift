//
//  ViewController.swift
//  UIKitTest
//
//  Created by Альберт on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var hiLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showButton(_ sender: Any) {
      
        self.hiLable.text = "Hi,"
        self.alert(title: "Внимание!", message: "Введите Имя", style: .alert)
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message , preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.hiLable.text! += (text?.text!)! + "!"
        }
        
        alertController.addTextField { (textField) in
            textField.isSecureTextEntry = true
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        
    }
}

