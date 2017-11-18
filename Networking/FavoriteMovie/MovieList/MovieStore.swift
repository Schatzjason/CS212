//
//  MovieStore.swift
//  MovieList
//
//  Created by Jason Schatz on 11/15/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import Foundation

class MovieStore {
    let name: String
    var movies: [Movie]
    
    init(_ name: String) {
        self.name = name
        self.movies = []
        
        // what if there are saved movies in the file system? 
    }
    
    func add(_ m: Movie) {
        movies.append(m)
        persist()
    }
    
    func remove(_ m: Movie) {
        movies = movies.filter(){$0.id != m.id}
        persist()
    }
    
    func remove(at index: Int) {
        movies.remove(at: index)
        persist()
    }
    
    func contains(_ m: Movie) -> Bool {
        return movies.contains(where: {$0.id == m.id})
    }
    
    func toggle(_ m: Movie) {
        if self.contains(m) {
            self.remove(m)
        } else {
            self.add(m)
        }
    }
    
    func persist() {
        // What to do here?
    }
    
    private var fileURL: URL {
        let documentDirectory = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor:nil, create:false)
        
        return documentDirectory.appendingPathComponent(name)
    }
}
