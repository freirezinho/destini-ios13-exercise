//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story0

    }


    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
    let story0: String = "You see a fork in the road"
    let choice1: String = "Take a left"
    let choice2: String = "Take a right"
}

