//
//  MovieTableViewController.swift
//  PixarMovies
//
//  Created by Jason Schatz on 3/16/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    let movies = Model().movies

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Set the title
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0 // How many sections?
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0; // How many rows?
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieTableViewCell
        
        cell.titleLabel.text = "" // title?

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // What should happen on a click?
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! MovieDetailViewController
        let row = tableView.indexPathForSelectedRow!.row
        
        // How shoulc we prepare?
    }
}
