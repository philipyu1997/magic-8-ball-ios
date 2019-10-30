//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Philip Yu on 6/28/19.
//  Copyright © 2019 Philip Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    // Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newBallImage()
        
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}

