//
//  TextField.swift
//  UIKitTest
//
//  Created by Альберт on 22.10.2020.
//

import UIKit

class TextField: UIViewController, UITextFieldDelegate {
    
    var myTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()

        createTextField()
        myTextField.delegate = self
//
//        NotificationCenter.default.addObserver(self, selector: #selector(textFieldTextDidChange(param:)), name: NSNotification.Name.didcha, object: <#T##Any?#>)
    }

//    MARK: CreateUI
    func createTextField() {
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = .roundedRect
//        выравнивание по центру текста
        myTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        myTextField.textAlignment = .center
        myTextField.placeholder = "I'm SWIFT developer"
        myTextField.center = self.view.center
        self.view.addSubview(myTextField)
    }
    
//    MARK: Notification
//
//    @objc func textFieldTextDidChange(param: NSNotification) {
//        print("\(param)")
//    }
    
////    MARK: UITextFieldDelegate
//     func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        print("Можно ли редактировать поле")
//        return true
//}
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print("Началось редактирование")
//    }
//
//
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        print("Закончилось редактирование")
//        return true
//    }
//
////    func textFieldDidEndEditing(_ textField: UITextField) {
////    print("")
////    }
//
//   func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
//    print("textFieldDidEndEditing")
//   }
//
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print("Вы ввели \(string)")
//        return true
//    }
//
////    func textFieldDidChangeSelection(_ textField: UITextField) {
////        print("")
////    }
//
//
//    func textFieldShouldClear(_ textField: UITextField) -> Bool {
//        print("Ты что то очистил")
//        return true
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        print("Хотите убрать клавиатуру")
//        if textField == myTextField {
//            self.myTextField.resignFirstResponder()
////            self.myTextField.becomeFirstResponder()
//        }
//        return true
//    }
//
}




 
