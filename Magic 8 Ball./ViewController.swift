//
//  ViewController.swift
//  Magic 8 Ball.
//
//  Created by chrisman on 29/07/19.
//  Copyright © 2019 chrisman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var ballArray: [String]=["ball1", "ball2", "ball3", "ball4","ball5"]
    var randomBallNumber=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newBallIMage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallIMage()
    }
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallIMage()
    }
    
    func newBallIMage(){
        randomBallNumber = Int.random(in: 0...4)
        let nameImage=ballArray[randomBallNumber]
        imageView.image=UIImage(named: nameImage)
    }

}

