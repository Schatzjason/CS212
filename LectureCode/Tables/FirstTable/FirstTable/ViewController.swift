//
//  ViewController.swift
//  FirstTable
//
//  Created by Jason Schatz on 10/19/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Remember which rows have check marks
    var selectedIndexes = Set<Int>()

    // Remeber some items for our table
    var fruits = ["Apple", "Mango", "Lemon", "Pear", "Orange", "Pineapple", "Persimon"]
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // The size of the fruits array determines the number of rows in the table
        return fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell to decorate
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")!
        
        // Set the text
        cell.textLabel?.text = fruits[indexPath.row]
        
        // Set or unset the checkmark
        if self.selectedIndexes.contains(indexPath.row) {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.none
        }
        
        // Send the cell back to the table
        return cell
    }
    
    // Invoked when a table cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Toggle whether or not the row # is in the set
        if selectedIndexes.contains(indexPath.row) {
            self.selectedIndexes.remove(indexPath.row)
        } else {
            self.selectedIndexes.insert(indexPath.row)
        }
                
        // Reload the row, so that we can see the change
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
}

