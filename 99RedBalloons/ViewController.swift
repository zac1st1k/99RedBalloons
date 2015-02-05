//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Zac on 5/02/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    var redBalloons: [Balloon]!
    var currentBallon: Balloon!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var Ballon1 = Balloon(number: "1", image: UIImage(named: "RedBalloon1.jpg")!)
        var Ballon2 = Balloon(number: "2", image: UIImage(named: "RedBalloon2.jpg")!)
        var Ballon3 = Balloon(number: "3", image: UIImage(named: "RedBalloon3.jpg")!)
        var Ballon4 = Balloon(number: "4", image: UIImage(named: "RedBalloon4.jpg")!)
        imageView.image = UIImage(named: "BerlinTVTower.jpg")
        label.hidden  = true
        redBalloons = [Ballon1, Ballon2, Ballon3, Ballon4]
        currentBallon = redBalloons[0]
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        label.hidden = false
        var caseNumber = 0
        do {
            caseNumber = Int(arc4random_uniform(UInt32(4)))
        } while caseNumber + 1 == currentBallon.number.toInt()
        println("current balloon\(currentBallon.number.toInt())")
        println("\(currentBallon.number) current number")
        println("\(caseNumber) case numer")

        switch caseNumber {
        case 0:
            imageView.image = redBalloons[0].image
            label.text = redBalloons[0].number
        case 1:
            imageView.image = redBalloons[1].image
            label.text = redBalloons[1].number
        case 2:
            imageView.image = redBalloons[2].image
            label.text = redBalloons[2].number
        case 3:
            imageView.image = redBalloons[3].image
            label.text = redBalloons[3].number
        default:
            imageView.image = UIImage(named: "BerlinTVTower.jpg")
        }
        currentBallon = redBalloons[caseNumber]
        println("updatted current ballon \(currentBallon.number)")
        
        
    }

}

