//
//  ViewController.swift
//  Dice App
//
//  Created by Andy Wong on 5/22/16.
//  Copyright © 2016 Andy Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let diceArray : [String] = ["dice1", "dice2","dice3","dice4","dice5","dice6"]
    

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeDiceFace()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//MARK: - Roll Button Methods
    @IBAction func rollButtonPressed(sender: UIButton) {
        
        print("roll button was pressed")
        changeDiceFace()
    }
    func changeDiceFace() {
        let firstRandomIndex = Int(arc4random_uniform(6))//this arc4random is imported from the UIKit INT is used to allow the result become an integer at the end so we can produce the image in the code before
        let secondRandomIndex = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[firstRandomIndex])
        diceImageView2.image = UIImage(named: diceArray[secondRandomIndex])
    }
//MARK: - Shake Gesture Method
    //TODO: Add Shake Gestures
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        changeDiceFace()
        print("Phone's been shakened")
    }
}

