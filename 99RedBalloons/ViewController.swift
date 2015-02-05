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
    var currentIndex:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redBalloons = Factory.create99Balloons()

        imageView.image = UIImage(named: "BerlinTVTower.jpg")
        label.text  = "\(redBalloons.count) red balloons."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        label.hidden = false
        imageView.image = redBalloons[currentIndex].image
        label.text = "\(currentIndex + 1) red ballon is \"\(redBalloons[currentIndex].number)\""
        currentIndex++
    }
}

