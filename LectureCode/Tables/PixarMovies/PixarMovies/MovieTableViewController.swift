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
        
        // Set the title
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count; // How many rows?
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieTableViewCell
        
        // Get the movie for this row
        let theMovie = movies[indexPath.row]
        
        cell.titleLabel.text = theMovie.title
        cell.poster.image = UIImage(named: theMovie.posterName)
        cell.dateLabel.text = "\(theMovie.year)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // What should happen on a click?
        self.performSegue(withIdentifier: "ShowMovieDetail", sender: self)
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! MovieDetailViewController
        
        let row = tableView.indexPathForSelectedRow!.row
        let theMovie = self.movies[row]
        
        
        // How shoulc we prepare?
        controller.movie = theMovie
    }
}
