//
//  ViewController.swift
//  Dicee roll
//
//  Created by mac on 9/10/19.
//  Copyright © 2019 FahmianVI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceeIndex1 : Int = 0
    var randomDiceeIndex2 : Int = 0
    let diceeArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceeImages()
        // Do any aditional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        
        updateDiceeImages()
    }
    func updateDiceeImages(){
        randomDiceeIndex1 = Int (arc4random_uniform(6))
        randomDiceeIndex2 = Int  (arc4random_uniform(6))
       
        
        diceeImageView1.image = UIImage (named: diceeArray[randomDiceeIndex1])
        diceeImageView2.image = UIImage (named: diceeArray[randomDiceeIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceeImages()
    }
    
}

