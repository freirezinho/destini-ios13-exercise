//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var stories: [Story] = [
    Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
    Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
    Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    var storyIndex: Int = 0;
    
    mutating func createStory(title: String, choice1: String, choice2: String) {
        let story = Story(title: title, choice1: choice1, choice2: choice2)
        stories.append(story)
    }
    
    mutating func nextStory(userChoice: String) {
        let title = userChoice
        if title == stories[0].choice1 {
            storyIndex = 1
        } else if title == stories[0].choice2{
            storyIndex = 2
        } else {
            storyIndex = 0
        }

    }
}
