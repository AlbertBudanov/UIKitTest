//
//  PickerView.swift
//  UIKitTest
//
//  Created by Альберт on 17.10.2020.
//

import UIKit

class PickerView: UIViewController {
    let myPicker = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.myPicker.frame = CGRect.zero
        myPicker.center = self.view.center
        myPicker.dataSource = self
        self.view.addSubview(myPicker)
//        Подписаться на протоколы

    }
}

extension PickerView: UIPickerViewDataSource {
//    обязательные методы протокола
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return 10
    }
}
