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
        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: .normal)
        choice2Button.setTitle(stories[0].choice2, for: .normal)

    }


    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    
    @IBOutlet weak var choice2Button: UIButton!
    
    
    let firstStory = Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right.")
    let secondStory = Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead.")
    let thirdStory = Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")

    lazy var stories = [firstStory, secondStory, thirdStory]
    
    var storyIndex: Int = 0
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let title = sender.title(for: .normal)
        if title == stories[0].choice1 {
            storyIndex = 1
        } else if title == stories[0].choice2{
            storyIndex = 2
        } else {
            storyIndex = 0
        }
        updateUI()
    }
    func updateUI() {
        storyLabel.text = stories[storyIndex].title
        choice1Button.setTitle(stories[storyIndex].choice1, for: .normal)
        choice2Button.setTitle(stories[storyIndex].choice2, for: .normal)
    }
    
}

