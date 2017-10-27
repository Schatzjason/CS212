//
//  GalaxyURLs.swift
//  Galaxy
//
//  Created by Jason Schatz on 10/25/16.
//  Copyright © 2016 Jason Schatz. All rights reserved.
//

import Foundation

struct GalaxyURLs {
    
    static var index = 0
    
    static let URLStrings = [
        "https://cdn.spacetelescope.org/archives/images/screen/opo0328a.jpg",
        "https://cdn.spacetelescope.org/archives/images/screen/heic0506a.jpg",
        "https://cdn.spacetelescope.org/archives/images/screen/heic0206b.jpg",
        "https://cdn.spacetelescope.org/archives/images/wallpaper5/potw1538a.jpg",
        "https://cdn.spacetelescope.org/archives/images/screen/heic0604a.jpg",
        "https://cdn.spacetelescope.org/archives/images/screen/potw1442a.jpg",
        "https://cdn.spacetelescope.org/archives/images/screen/opo9925a.jpg",
        "https://cdn.spacetelescope.org/archives/images/screen/potw1119a.jpg",
        "https://cdn.spacetelescope.org/archives/images/screen/potw1108a.jpg",
        "https://cdn.spacetelescope.org/archives/images/screen/opo9919i.jpg"
    ]
    
    static var nextURLString: String {
        index = (index + 1) % URLStrings.count
        print("returning image \(index)")
        return URLStrings[index]
    }
}
