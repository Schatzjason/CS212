//
//  TaskTableViewCell.swift
//  MovieList
//
//  Created by Jason Schatz on 11/15/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    var task: URLSessionTask? {
        willSet {
            if let task = task {
                task.cancel()
            }
        }
    }
}
