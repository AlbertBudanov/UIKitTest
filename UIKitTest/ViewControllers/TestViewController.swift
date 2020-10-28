//
//  TestViewController.swift
//  UIKitTest
//
//  Created by Альберт on 17.10.2020.
//

import UIKit
import AVFoundation

class TestViewController: UIViewController {
    
    var myScroll = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let avengersImage = UIImage(named: "mar")
        let avenImage = UIImage(named: "Marvel's_Avengers_2019_logo")
        let torImage = UIImage(named: "15х21тор")
        
        let scrollViewRect = self.view.bounds
        
//        create scroll
        myScroll = UIScrollView(frame: scrollViewRect)
// перелист фото
        myScroll.isPagingEnabled = true
        
        myScroll.contentSize = CGSize(width: scrollViewRect.size.width * 3, height: scrollViewRect.size.height)
        
        self.view.addSubview(myScroll)
        
//        create avengers
        var imageViewRect = self.view.bounds
        let avengersImageView = self.newImageViewWithImage(paramImage: avengersImage!, paramFrame: imageViewRect)
        myScroll.addSubview(avengersImageView)
        
//        next page
        imageViewRect.origin.x += imageViewRect.size.width
        let avenImageView = self.newImageViewWithImage(paramImage: avenImage!, paramFrame: imageViewRect)
        self.myScroll.addSubview(avenImageView)
    
    
    //        next page
            imageViewRect.origin.x += imageViewRect.size.width
        let torImageView = self.newImageViewWithImage(paramImage: torImage!, paramFrame: imageViewRect)
        self.myScroll.addSubview(torImageView)
}
        
    
    func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
    
}
