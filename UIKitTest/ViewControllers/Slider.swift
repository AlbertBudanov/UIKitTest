//
//  Slider.swift
//  UIKitTest
//
//  Created by Альберт on 17.10.2020.
//

import UIKit

// Импортируем библиотеку аудиоплеера
import AVFoundation

class Slider: UIViewController {
    @IBOutlet var sliderValue: UISlider!
    
    let playButton = UIButton()
    var player = AVAudioPlayer()
    let mySlider = UISlider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Slider
        self.mySlider.frame = CGRect(x: 0, y: 0, width: 200, height: 23)
        self.mySlider.center = self.view.center
        self.mySlider.minimumValue = 0.0
        self.mySlider.maximumValue = 100.0
        self.view.addSubview(mySlider)
        
        self.mySlider.addTarget(self, action: #selector(changeSlider(sender:)), for: .valueChanged)
        
        do {
            if let audioPlayer = Bundle.main.path(forResource: "Anouka", ofType: "mp3") {
                
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPlayer))
                self.mySlider.maximumValue = Float(player.duration)
                
                
            }
        } catch {
            print("Error")
        }
        self.player.play()
    }
    
//    Action
    @IBAction func playButton(_ sender: Any) {
        self.player.play()
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        self.player.pause()
    }
    
     @objc func changeSlider(sender: UISlider) {
        if sender == mySlider {
            self.player.currentTime = TimeInterval(sender.value)
//            self.player.play()
        }
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        self.player.volume = self.sliderValue.value
    }
    
    
}
