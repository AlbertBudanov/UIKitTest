//
//  ProgressView.swift
//  UIKitTest
//
//  Created by Альберт on 25.10.2020.
//

import UIKit

class ProgressView: UIViewController {
    
    private let myProgressView = UIProgressView()
    private let myButton = UIButton()
    private var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createProgressView(myProgressView)
        createButton(myButton)
        createTimer()
        
    }
    
    //    MARK: Create Timer
    
    func createTimer() {
        myTimer = Timer.scheduledTimer(timeInterval: 1,
                                       target: self,
                                       selector: #selector(updateProgressView),
                                       userInfo: nil,
                                       repeats: true)
    }
    
    //    MARK: Selector
    
    @objc func updateProgressView() {
        if myProgressView.progress != 1.0 {
            myProgressView.progress += 0.1 / 1.0
        } else if
            myProgressView.progress == 1.0 {
            UIView.animate(withDuration: 0.7) {
                self.myButton.alpha = 1
                self.myButton.setTitle("Жми", for: .normal)
                self.myTimer.invalidate()
                self.myProgressView.isHidden = true
            }
            
        }
    }
    
    //    MARK: UI
    
    func createProgressView(_ progressView: UIProgressView) {
        progressView.progressViewStyle = .bar
        progressView.frame = CGRect(x: view.center.x, y: view.center.y, width: 150, height: 50)
        progressView.setProgress(0.0, animated: false)
        progressView.progressTintColor = UIColor.green
        progressView.trackTintColor = UIColor.gray
        progressView.center = view.center
        view.addSubview(progressView)
    }
    
    func createButton(_ button: UIButton) {
        button.frame = CGRect(x: view.bounds.size.width / 4,
                              y: view.center.y / 2,
                              width: 150,
                              height: 50)
        button.alpha = 0.2
        button.backgroundColor = .red
        button.setTitle("Hello", for: .normal)
        view.addSubview(button)
    }
    
}
