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
        
        myPicker.center = self.view.center
        myPicker.dataSource = self
        myPicker.delegate = self
        self.view.addSubview(myPicker)
        
    }
}

//
// Подписаться на протоколы
extension PickerView: UIPickerViewDataSource {
    //    Обязательные методы протокола

    //  Сколько компонентов нужно вывести
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    //    Сколько строк
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
}
extension PickerView: UIPickerViewDelegate {

    //
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "row = \(row)"
        return result
    }

}


