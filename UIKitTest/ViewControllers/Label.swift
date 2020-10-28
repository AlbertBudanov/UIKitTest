//
//  Label.swift
//  UIKitTest
//
//  Created by Альберт on 21.10.2020.
//

import UIKit

class Label: UIViewController {

    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let labelFrame = CGRect(x: 0, y: 0, width: 150, height: 70)
        myLabel.frame = labelFrame
        myLabel.text = "IOS 14 ghfg my test avaa"
        myLabel.numberOfLines = 0
        myLabel.lineBreakMode = .byWordWrapping
//        уменьшает шрифт
        myLabel.adjustsFontSizeToFitWidth = true
        
        myLabel.sizeToFit()
        myLabel.shadowColor = .lightGray
//        отступ тени
        myLabel.shadowOffset = CGSize(width: 5, height: 5)
        myLabel.font = UIFont.boldSystemFont(ofSize: 24)
        myLabel.center = self.view.center
        view.addSubview(myLabel)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
