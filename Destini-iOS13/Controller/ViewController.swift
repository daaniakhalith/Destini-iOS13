//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
    var viewStory = StoryBrain()
    var img = UIImage()
class ViewController: UIViewController {
    @IBOutlet weak var Choice2: UIButton!
    @IBOutlet weak var Choice1: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = Destini_iOS13.viewStory.gettext()
        Choice1.setTitle(viewStory.getchoice1(), for: UIControl.State.normal)
        Choice2.setTitle(viewStory.getchoice2(), for:UIControl.State.normal)
        //imageView.image = img

    }
    
    
    
    @IBAction func inputButton(_ sender: UIButton) {
        let answer = sender.currentTitle!
        img=viewStory.optioncheck(_answer: answer)
        insert()
    }
        
    
    func insert(){
        Choice1.setTitle(viewStory.getchoice1() , for: UIControl.State.normal)
        Choice2.setTitle(viewStory.getchoice2(), for:UIControl.State.normal)
        imageView.image = img
        label.text = viewStory.gettext()

    }
}
    


