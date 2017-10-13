
import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func navigateToBlueUsingAllCode() {
        
        let vc = storyboard!.instantiateViewController(withIdentifier: "Blue")
        let blue = vc as! BlueViewController
        
        blue.message = "Brought to you by code."
        
        self.navigationController?.pushViewController(blue, animated: true)
    }
    
    @IBAction func navigateToBlueUsingManualSegue() {
        self.performSegue(withIdentifier: "ManualSegue1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let blue = segue.destination as! BlueViewController
        
        if segue.identifier == "ManualSegue1" {
            blue.message = "Brought to you by the manual segue"
        }
        
        if segue.identifier == "ActionSegue" {
            blue.message = "Brought to you by the action segue"
        }
    }
}



