//
//  SegmentControl.swift
//  UIKitTest
//
//  Created by Альберт on 18.10.2020.
//

import UIKit

class SegmentControl: UIViewController {

    var mySegmentControl = UISegmentedControl()
    let items = ["one", "two", "three"]
    let imageView = UIImageView()
    let imageArray = [UIImage(named: "Black"),
                      UIImage(named: "White"),
                      UIImage(named: "Multi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(imageView)

        self.mySegmentControl = UISegmentedControl(items: items)
        self.mySegmentControl.frame = CGRect(x: 100, y: 500, width: 200, height: 30)
        self.view.addSubview(mySegmentControl)
        
        self.mySegmentControl.addTarget(self, action: #selector(selectedValue(target:)), for: .valueChanged)
        
        
        
        
    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == self.mySegmentControl {
            let segmentIndex = target.selectedSegmentIndex
            
            self.imageView.image = self.imageArray[segmentIndex]
//            Сегмент не остается нажатым
            self.mySegmentControl.isMomentary = true
        }
    }
}
