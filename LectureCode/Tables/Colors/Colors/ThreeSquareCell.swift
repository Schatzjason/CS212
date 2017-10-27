//
//  ThreeSquareCellTableViewCell.swift
//  Colors
//
//  Created by Jason Schatz on 10/26/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ThreeSquareCell: UITableViewCell {

    @IBOutlet var leftSquare: UIView!
    @IBOutlet var middleSquare: UIView!
    @IBOutlet var rightSquare: UIView!
    
    var color: UIColor! {
        didSet {
            leftSquare.backgroundColor = color
            middleSquare.backgroundColor = color
            rightSquare.backgroundColor = color
        }
    }
}
