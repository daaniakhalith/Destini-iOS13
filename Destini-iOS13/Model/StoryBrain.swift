//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import UIKit
import Foundation
var questionNumber = 0
struct StoryBrain {
    
    let StoryQuiz=[Story(
        title: "In the war of Selecting Motherhood and Professional Life",
        choice1: "Priotizing the Infant", choice1Destination: 1,choice1_img: UIImage(named: "Image4")!,
        choice2: "Continuing Work with a heavy heart.", choice2Destination: 2,choice2_img: UIImage(named: "image5")!
    ),
                   Story(
                    title: "Enjoying Motherhood and Providing All Care for the Baby with Full Love and Caring",
                    choice1: "Realizing Time Spent Without Self-Care and Self-Development.", choice1Destination: 3,choice1_img: UIImage(named: "Image4")!,
                    choice2: "Finding Balance Between Self-Care and family", choice2Destination: 6,choice2_img: UIImage(named: "happy")!
                   ),
                   Story(
                    title: "Working With a Hard Heart and Crying Aloud",
                    choice1: "Continue to Work by hoping things will improve over time", choice1Destination: 4,choice1_img: UIImage(named: "image5")!,
                    choice2: "Quit the Work by realizing that the emotional toll is great to bear", choice2Destination: 1,choice2_img: UIImage(named: "image5")!
                   ),
                   Story(
                    title: "After a Few Years,Feeling a Large Gap in Career and Lost herself and Planing to Restart Career.",
                    choice1: "Enrolling in a Udemy Course by Angela.", choice1Destination: 4,choice1_img: UIImage(named: "depression")!,
                    choice2: "Starting a domestic Buisness while caring the family.", choice2Destination: 5,choice2_img: UIImage(named: "tailoring")!
                   ),
                   Story(
                    title: " Achieved great career development,earned a lot,became financially independent,and become a role model for her kids",
                    choice1: "The", choice1Destination: 0,choice1_img: UIImage(named: "Image3")!,
                    choice2: "End", choice2Destination: 0,choice2_img: UIImage(named: "Image3")!
                   ),
                   Story(
                    title: "Leading a Peacefull Family and sustainable family with home garden,raising cow and hens at home with a reasonable income'",
                    choice1: "The", choice1Destination: 0,choice1_img: UIImage(named: "tailoring")!,
                    choice2: "End", choice2Destination: 0,choice2_img: UIImage(named: "tailoring")!
                   ),Story(
                    title: "Enjoying Motherhood and Providing All Care for the Baby with Full Love and Caring",
                    choice1: "The.", choice1Destination: 0,choice1_img: UIImage(named: "imag1")!,
                    choice2: "End", choice2Destination: 0,choice2_img: UIImage(named: "imag1")!
                   )]
    mutating func optioncheck(_answer: String) -> UIImage{
        if _answer == StoryQuiz[questionNumber].option1{
            questionNumber = StoryQuiz[questionNumber].option1Destination
            print(questionNumber)
            return StoryQuiz[questionNumber].img_choice1!}
        else{
            questionNumber = StoryQuiz[questionNumber].option2Destination
            print(questionNumber)
            return StoryQuiz[questionNumber].img_choice2!
            }
        }
    func gettext() -> String {
        return StoryQuiz[questionNumber].text
        
        
    }
    func getchoice1() -> String {
        return StoryQuiz[questionNumber].option1
    }
    func getchoice2() -> String {
        return StoryQuiz[questionNumber].option2
    }
    

     
}

