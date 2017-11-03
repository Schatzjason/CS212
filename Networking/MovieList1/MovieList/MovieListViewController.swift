//
//  MovieListViewController.swift
//  MovieList
//
//  Created by ccsfcomputers on 10/29/15.
//  Copyright (c) 2015 Jason Schatz. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var movies: [Movie] = [Movie]()
    
    override func viewDidLoad() {
        
        setUIToDownloading(true)
        
        let url = TMDBURLs.URLForResource(TMDB.Resources.MovieTopRated)
        print(url)
        
        let task = URLSession.shared.dataTask(with: url) {
            data, response, error in

            // Simple error handling
            if let error = error {
                print(error)
                return
            }
            
            // Update the view controller's state
            self.movies = self.moviesFromData(data)
            
            // Send the UI Updating work back to the main thread
            DispatchQueue.main.async {
                self.tableView.reloadData()
                self.setUIToDownloading(false)
            }
        }
        
        task.resume()
    }
    
    // MARK: - Toggle UI while downloading
    
    func setUIToDownloading(_ isDownloading: Bool) {
        
        if isDownloading {
            self.activityIndicator.startAnimating()
        } else {
            self.activityIndicator.stopAnimating()
        }
        
        self.activityIndicator.isHidden = isDownloading
        self.tableView.alpha = isDownloading ? 0.2 : 1.0
    }
    
    // MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    var cellNumber = 0
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        // Get the movie associated with this row out of the array
        let movie = movies[indexPath.row]
        
        // Set the movie title
        cell.textLabel!.text = movie.title
        
        // Set the movie poster
        
        if movie.posterPath == nil {
            // api node has no imagepath
            cell.imageView!.image = UIImage(named: "noImage")
        } else {
            // Set a placeholder before we start the download
            cell.imageView!.image = UIImage(named: "placeHolder")
        
            // get url, 
            let url = TMDBURLs.URLForPosterWithPath(movie.posterPath!)

            // create task
            let task = URLSession.shared.dataTask(with: url, completionHandler: {
                data, response, error in

                if let error = error {
                    print(error)
                }

                if data == nil {
                    return
                }
                
                let image = UIImage(data: data!)!
                 
                movie.posterImage = image
                    
                DispatchQueue.main.async {
                 cell.imageView!.image = image
                }
            })
            
            // resume task
            task.resume()
            
        }
        
        return cell
    }
    
    
    // MARK: - Parser
    
    func moviesFromData(_ data: Data?) -> [Movie] {
        
        // No data, return an empty array
        guard let data = data else {
            return []
        }
        
        // Parse the Data into a JSON Object
        let JSONObject = try! JSONSerialization.jsonObject(with: data)
        
        // Insist that this object must be a dictionary
        guard let dictionary = JSONObject as? [String : Any] else {
            assertionFailure("Failed to parse data. data.length: \(data.count)")
            return [Movie]()
        }
        
        // These are the dictionaries that we want to make into movies
        let movieDictionaries = dictionary[TMDB.Keys.Results] as! [[String : AnyObject]]
        
        // This is where we will put the movies. We will return this array.
        var movies = [Movie]()
        
        // For each dictionary...
        for d in movieDictionaries {
            
            // Make a movie...
            let m = Movie(dictionary: d)!
            
            // Put it into the array that we will return
            movies.append(m)
        }
        
        return movies
    }
}
