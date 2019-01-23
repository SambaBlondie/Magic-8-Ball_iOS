//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kassandra Zimmerman on 1/23/19.
//  Copyright © 2019 SambaBlondie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        
        newBallImage()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
        
        let randomBallNumber = Int.random(in: 0...4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

