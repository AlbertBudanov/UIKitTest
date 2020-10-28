//
//  TextView.swift
//  UIKitTest
//
//  Created by Альберт on 23.10.2020.
//

import UIKit

class TextView: UIViewController {
    
    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTextView()
        
    }
    
    func createTextView() {
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: self.view.bounds.width - 40, height: self.view.bounds.height / 2))
        myTextView.text = "dsgsdgdsgd"
        //        где будет располагаться контент
        myTextView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        self.view.addSubview(myTextView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.myTextView.resignFirstResponder()
        self.myTextView.backgroundColor = .green
    }
    
//    func updateTextView(param: Notification) {
//        let userInfo = param.userInfo
////        контур клавиатуры
//        let getGeyboardRect = (userInfo![UIKey])
//    }
    
}
