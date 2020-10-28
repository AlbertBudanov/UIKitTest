//
//  ImageView.swift
//  UIKitTest
//
//  Created by Альберт on 24.10.2020.
//

import UIKit

class ImageView: UIViewController {

    var myImageView = UIImageView()
    let myImage = UIImage(named: "favorite_star")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView = UIImageView(frame: self.view.bounds)
        
//         подгон размеров
        
        myImageView.contentMode = .scaleToFill
        
        myImageView.image = myImage
        myImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        myImageView.center = self.view.center
//        рамки
        myImageView.layer.borderWidth = 2
        myImageView.layer.borderColor = UIColor.blue.cgColor
        myImageView.layer.cornerRadius = 50
//        обрез по краям
        myImageView.clipsToBounds = true
        
        
        self.view.addSubview(myImageView)
    }
    


}
