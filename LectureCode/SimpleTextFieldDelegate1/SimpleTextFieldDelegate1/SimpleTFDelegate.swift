//
//  SimpleTFDelegate.swift
//  SimpleTextFieldDelegate1
//
//  Created by Jason Schatz on 9/28/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class SimpleTFDelegate : NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print(string)
        
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        //print("text field should begin editing? ...")
        return false
    }
}


