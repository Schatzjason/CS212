//
//  Movie.swift
//  TheMovieDB
//
//  Created by Jason on 1/11/16.
//

import UIKit

class Movie {
    
    struct Keys {
        static let Title = "title"
        static let PosterPath = "poster_path"
        static let ID = "id"
    }
    
    var title: String
    var id: Int
    var posterPath: String? = nil
    var posterImage: UIImage?
    
    // Init from a dictionary.
    init?(dictionary: [String : Any]) {
        
        // Mandatory values
        guard
            let title = dictionary[Keys.Title] as? String,
            let id = dictionary[Keys.ID] as? Int
        else {
            return nil
        }
        
        // Optional value
        let posterPath = dictionary[Keys.PosterPath] as? String

        // Put the extracted values into the properties
        self.title = title
        self.id = id
        self.posterPath = posterPath
    }
    
    var dictionary: [String : Any] {
        var d = [String : Any]()
        
        d[Keys.Title] = title
        d[Keys.ID] = id
        
        if let posterPath = posterPath {
            d[Keys.PosterPath] = posterPath
        }
        
        return d
    }
}



