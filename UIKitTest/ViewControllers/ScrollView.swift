//
//  ScrollView.swift
//  UIKitTest
//
//  Created by Альберт on 24.10.2020.
//

import UIKit

class ScrollView: UIViewController, UIScrollViewDelegate {
    
    var myScrollView = UIScrollView()
    var myImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       createScrollView()
        
    }
    
//    MARK: UIScrollViewDelegate
    
//    прокрутка
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Начинается прокрутка")
        print(myScrollView.contentOffset.y)
//        прозрачность
        self.myScrollView.alpha = 0.5
    }
    
//    вызывается после прокрутки
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("вызывается после прокрутки")
        self.myScrollView.alpha = 1
    }
     
//
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("гарантирует, что вернет альфу к 1")
        self.myScrollView.alpha = 1
    }
    
    func createScrollView() {
        let imageToLoad = UIImage(named: "mar")
        myImageView = UIImageView(image: imageToLoad)
        myScrollView = UIScrollView(frame: self.view.bounds)
        myScrollView.addSubview(myImageView)
        myScrollView.contentSize = myImageView.bounds.size
        myScrollView.delegate = self
        
        self.view.addSubview(myScrollView)
    }
    

}
