//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit
struct Story{
    let text: String
    let option1:String
    let option1Destination:Int
    let img_choice1:UIImage?
    let option2:String
    let option2Destination:Int
    let img_choice2:UIImage?
    
    init(title: String, choice1: String, choice1Destination:Int,choice1_img:UIImage,choice2: String,choice2Destination:Int,choice2_img:UIImage){
        text = title
        option1 = choice1
        option1Destination = choice1Destination
        img_choice1 = choice1_img
        option2 = choice2
        option2Destination = choice2Destination
        img_choice2 = choice2_img
    }
}
