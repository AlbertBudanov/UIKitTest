//
//  DataPicker.swift
//  UIKitTest
//
//  Created by Альберт on 17.10.2020.
//

import UIKit

class DataPicker: UIViewController {

    let myDataPicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myDataPicker.center = self.view.center
//        Выбираем, с чем работать, на что сделать ограничения
        myDataPicker.datePickerMode = .date
        
//        Timer
//        myDataPicker.datePickerMode = .countDownTimer
        
//        Создаем тайминтервал - ограничения для выбора даты
        var oneYearTime = TimeInterval()
        oneYearTime = 365 * 24 * 60 * 60
        
//        Создаем жкземпляр класса Date
        let todayDate = Date()
//        Ставим ограничение год вперед
        let oneYearFromDay = todayDate.addingTimeInterval(oneYearTime)
        let twoYearFromDay = todayDate.addingTimeInterval(oneYearTime * 2)
        
//        Присваиваем Значения мин и мах
        myDataPicker.minimumDate = oneYearFromDay
        myDataPicker.maximumDate = twoYearFromDay
        
//        Timer
//        myDataPicker.countDownDuration = 2 * 60
        
        self.view.addSubview(myDataPicker)
        
        myDataPicker.addTarget(self, action: #selector(dataPickerChange(paramDataPicker:)), for: .valueChanged)
    }
    @objc func dataPickerChange(paramDataPicker: UIDatePicker) {
        if paramDataPicker.isEqual(self.myDataPicker) {
            print("dateChange : = ", paramDataPicker.date)
        }
    }
}
