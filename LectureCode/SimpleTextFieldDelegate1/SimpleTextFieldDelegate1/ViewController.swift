//
//  ViewController.swift
//  SimpleTextFieldDelegate1
//
//  Created by Jason Schatz on 9/28/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField.delegate = self
    }
    
    // Text Field Delegate Methods
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("text field should begin editing")
        return true
    }
    
    func textField(_ tf: UITextField, shouldChangeCharactersIn r: NSRange, replacementString s: String) -> Bool {

        let originalString: NSString = textField.text! as NSString
        let completedString = originalString.replacingCharacters(in: r, with: s)
        print("The completed string would have been: \(completedString)")
        
        textField.text = completedString.replacingOccurrences(of: " ", with: "_")
        
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("text field should return")
        textField.resignFirstResponder()
        return true
    }
}







