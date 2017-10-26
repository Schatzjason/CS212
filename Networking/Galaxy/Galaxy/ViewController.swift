

import UIKit

class GalaxyViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var button: UIButton!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    // We will use this to keep track of our state for now
    var isDownloading: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the initial state
        isDownloading = false;
        toggleViews(isDownloading: false)
    }
    
    // Whenever the button is clicked, toggle between the two states
    // downloading, and not downloading
    @IBAction func downloadOrCancel() {
        
        if !isDownloading {
            startTheDownload()
        } else {
            cancelTheDownload()
        }
    }
    
    // Here's where we will start the downloading magic
    
    func startTheDownload() {

        // Switch into downloading state
        print("about to start working")
        isDownloading = true
        toggleViews(isDownloading: true)

        /* Some pretend work for our app

        // for right now, we'll do some busy work in place of downloading
        busyWork(300000)
        
        // When we are done, switch the state back\
        print("done working")
        isDownloading = false
        toggleViews(isDownloading: false)
 
        */
    }
    
    func cancelTheDownload() {
        isDownloading = false
        toggleViews(isDownloading: false)
    }
    
    // Use this method to toggle the state of the UI
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
    
    // This is just a way to experiment with work that takes
    // a long time. Counts the number of prime values between 
    // 1 and size
    func busyWork(_ size: Int) {
        var primeCount = 3
        for value in 5...size {
            var isPrime = true;
            let highestFactor = Int(sqrt(Double(value)))
            for potentialFactor in 2...highestFactor {
                if (value % potentialFactor == 0) {
                    isPrime = false
                }
            }
            
            if isPrime {
                primeCount += 1
            }
        }
        
        print(primeCount)
    }
}
