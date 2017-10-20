//
//  ViewController.swift
//  SimpleTable
//
//  Created by Jason Schatz on 3/16/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let strings = ["Do", "Re", "Mi", "Fa", "So", "La", "Ti"]

    // MARK: - Table View Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CenteringTableViewCell
        
        let message = strings[indexPath.row]
        
        cell.centerLabel.text = message
        
        return cell
    }
    
    // MARK: - Table View Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let s = strings[indexPath.row]
        print("Selected \(s)")
    }
    
}

