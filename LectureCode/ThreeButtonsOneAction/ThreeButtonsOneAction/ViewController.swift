//
//  ViewController.swift
//  ThreeButtonsOneAction
//
//  Created by Jason Schatz on 9/28/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var one: UIButton!
    @IBOutlet var two: UIButton!
    @IBOutlet var three: UIButton!
    
    private var buttonsToDigits = [UIButton : Int]()
    
    override func viewDidLoad() {
        buttonsToDigits[one] = 1
        buttonsToDigits[two] = 2
        buttonsToDigits[three] = 3
    }
    
    @IBAction func digitPressed(sender: UIButton) {
        let digit = buttonsToDigits[sender]!
        processDigit(digit)
    }
    
    func processDigit(_ digit: Int) {
        print(digit)
    }
}

