

import UIKit

class GalaxyViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var button: UIButton!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    var isDownloading: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleViews(isDownloading: false)
    }
    
    @IBAction func downloadOrCancel() {

        isDownloading = !isDownloading
        
        if isDownloading {
            beginDownloading()
        }
        
        toggleViews(isDownloading: isDownloading)
    }
    
    func beginDownloading() {
        
        let urlString = GalaxyURLs.nextURLString
        let url = URL(string: urlString)!
        
        let task = URLSession.shared.dataTask(with: url) {
            data, response, error in
            
            // Downloading is over.
            self.isDownloading = false

            // Handle the error if there is one
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            // create the image from the data
            let image = UIImage(data: data!)
            
            // update the views through the main queue
            DispatchQueue.main.async {
                self.imageView.image = image
                self.toggleViews(isDownloading: false)
            }
        }
        
        // Start the download
        task.resume()
        
        // The view controller remembers its state, and updates its views
        isDownloading = true
        toggleViews(isDownloading: true)
    }
    
    func toggleViews(isDownloading: Bool) {
    
        // Button
        let buttonTitle = isDownloading ? "Cancel" : "Start"
        button.setTitle(buttonTitle, for: .normal)
        
        // Activity Indicator
        if isDownloading {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
        
        // Image View
        imageView.isHidden = isDownloading
    }
}
