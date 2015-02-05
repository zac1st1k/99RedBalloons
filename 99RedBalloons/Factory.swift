//
//  Factory.swift
//  99RedBalloons
//
//  Created by Zac on 5/02/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

import Foundation
import UIKit

class Factory {
    class func create99Balloons() -> [Balloon] {
        var Ballon1 = Balloon(number: "Ballon 1", image: UIImage(named: "RedBalloon1.jpg")!)
        var Ballon2 = Balloon(number: "Ballon 2", image: UIImage(named: "RedBalloon2.jpg")!)
        var Ballon3 = Balloon(number: "Ballon 3", image: UIImage(named: "RedBalloon3.jpg")!)
        var Ballon4 = Balloon(number: "Ballon 4", image: UIImage(named: "RedBalloon4.jpg")!)
        var redBallons:[Balloon] = []
        var caseNumber:Int
        var currentNumber:Int = -1
        for n in 1...99 {
            do {
                caseNumber = Int(arc4random_uniform(UInt32(4)))
            } while caseNumber == currentNumber
            println("current balloon\(currentNumber)")
            println("\(caseNumber) case numer")
            var redBallon = Balloon()
            switch caseNumber {
            case 0:
                redBallon = Ballon1
            case 1:
                redBallon = Ballon2
            case 2:
                redBallon = Ballon3
            default:
                redBallon = Ballon4
            }
            redBallons.append(redBallon)
            currentNumber = caseNumber
        }
        return redBallons
    }
}