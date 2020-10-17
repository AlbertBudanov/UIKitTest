//
//  ViewControllerTwo.swift
//  UIKitTest
//
//  Created by Альберт on 16.10.2020.
//

import UIKit

class ViewControllerTwo: UIViewController {

//    MARK: Жизненный цикл VC
//    1 - Init - выделение памяти
    
//    2 - loadView - загрузка view
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
//    3 - viewDidLoad - view загрузилось
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
//    4 - viewWillAppear - view сейчас появится
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
//    5 - viewDidAppear - view появился
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    
//   5 - viewWillLayoutSubviews - срабатывает перед тем, как размер view поменяется под размер экрана
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }
    
//  6 - viewDidLayoutSubviews - срабатывает после того, как размер view поменялся под размер экрана
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }
    
//    7 - viewWillTransition - срабатывает при повороте экрана
//    8 - viewDidTransition
    
//    9 - viewWillDisappear - view будет закрыто
//    10 - viewDidDissappear - view закрылось
//     11 - deInit - выгружает обьект из памяти
}
