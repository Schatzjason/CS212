//
//  Counter.swift
//  ClickCount
//
//  Created by Jason Schatz on 9/5/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import Foundation

class Counter {
    
    private var _value: Int
    
    var value: Int {
        get {
            return _value
        }
    }
    
    init(initialValue: Int) {
        _value = initialValue
    }
    
    func increment() {
        _value += 1
    }
}
