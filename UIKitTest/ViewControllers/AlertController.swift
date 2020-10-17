//
//  AlertController.swift
//  UIKitTest
//
//  Created by Альберт on 16.10.2020.
//

import UIKit

class AlertController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func alertCont(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert!", message: "Hello", preferredStyle: .alert)
        let action = UIAlertAction(title: "Okay", style: .default) { (alert) in
            print("Alert Closed")
        }
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
}
}
