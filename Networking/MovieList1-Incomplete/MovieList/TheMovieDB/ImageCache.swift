//
//  File.swift
//  FavoriteActors
//
//  Created by Jason on 1/31/15.
//  Copyright (c) 2015 CCSF. All rights reserved.
//

import UIKit

class ImageCache {
    
    fileprivate var inMemoryCache = NSCache<AnyObject, AnyObject>()
    
    // MARK: - Retreiving images
    
    func imageWithIdentifier(_ identifier: String?) -> UIImage? {
        
        // If the identifier is nil, or empty, return nil
        if identifier == nil || identifier! == "" {
            return nil
        }
        
        let path = pathForIdentifier(identifier!)
        
        // First try the memory cache
        if let image = inMemoryCache.object(forKey: path as AnyObject) as? UIImage {
            return image
        }
        
        // Next Try the hard drive
        if let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            let image = UIImage(data: data)!
            
            // Bring it up to the in-memory cache
            inMemoryCache.setObject(image, forKey: path as AnyObject)
            
            return image
        }
        
        return nil
    }
    
    
    // MARK: - Saving images
    
    func storeImage(_ image: UIImage?, withIdentifier identifier: String) {
        let path = pathForIdentifier(identifier)
        
        // If the image is nil, remove images from the cache
        if image == nil {
            inMemoryCache.removeObject(forKey: path as AnyObject)
            do {try FileManager.default.removeItem(atPath: path)} catch _ {}
            return
        }
        
        // Otherwise, keep the image in memory
        inMemoryCache.setObject(image!, forKey: path as AnyObject)
        
        // And in documents directory
        let data = UIImagePNGRepresentation(image!)!
        try? data.write(to: URL(fileURLWithPath: path), options: [.atomic])
    }
    
    
    // MARK: - Helper
    
    // The image files are stored in a directory named "Image-Cache" inside the app's documents directory
    
    func pathForIdentifier(_ identifier: String) -> String {
        let fullURL = imageCacheDirectoryURL.appendingPathComponent(identifier)
        
        return fullURL.path
    }
    
    lazy var imageCacheDirectoryURL: URL = {
        let documentsDirectoryURL: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let imageCacheDirectoryURL = documentsDirectoryURL.appendingPathComponent("ImageCache")
        
        return imageCacheDirectoryURL
    }()
}
