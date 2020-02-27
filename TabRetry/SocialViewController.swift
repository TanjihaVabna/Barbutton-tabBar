
import UIKit

class SocialViewController: UIViewController {

    @IBOutlet weak var facebook: UIButton!
    
    @IBOutlet weak var instragram: UIButton!

    @IBOutlet weak var linkdin: UIButton!

    @IBOutlet weak var twitter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    facebook.layer.cornerRadius = 15
    instragram.layer.cornerRadius = 15
    twitter.layer.cornerRadius = 15
    linkdin.layer.cornerRadius = 15

    }
    @IBAction func facebook(_ sender: Any) {
        guard let url = URL (string:"https://www.facebook.com/")
        else {
            return
    }
        UIApplication.shared.open(url)
    }
    @IBAction func instragram(_ sender: Any) {
        guard let url = URL (string:"https://www.instagram.com/")
        else {
            return
        }
        UIApplication.shared.open(url)
        
    }
    @IBAction func linkdin(_ sender: Any) {
        
        guard let url = URL (string:"https://www.linkedin.com/login")
        else {
            return
        
    }
         UIApplication.shared.open(url)
    }
    @IBAction func twitter(_ sender: Any) {
        guard let url = URL(string:"https://www.twitter.com/i/flow/signup")
        
        else {
            return
    }
        UIApplication.shared.open(url)
}
}
