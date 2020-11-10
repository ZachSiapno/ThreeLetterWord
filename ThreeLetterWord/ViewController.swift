//
//  ViewController.swift
//  ThreeLetterWord
//
//  Created by  on 11/9/20.
//  Copyright © 2020 ZaCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentLetterLabel: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet var wordLabels: [UILabel]!
    
    
    var counter = 0
    var currentLetter = "A"
    var letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func stackTapped(_ sender: UITapGestureRecognizer) {
        // where I tapped, the current letter can go to the correct label
        let location = sender.location(in: stackView)
        
        print(location)
        
        for label in wordLabels
        {
            if label.frame.contains(location)
            {
                label.text = currentLetter
            }
        }
        
        //update the current letter
        
        counter += 1
        if counter > 25
        {
            counter = 0
        }
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        
        
    }
    
    
}

