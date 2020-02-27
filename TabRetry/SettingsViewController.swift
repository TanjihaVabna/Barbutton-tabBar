
import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var changeclr: UITextField!
    @IBOutlet weak var Clickbtn: UIButton!
    
    @IBAction func clickbtn(_ sender: Any) {
        if ((sender as AnyObject).isOn == true){
                 self.navigationController?.navigationBar.barTintColor = UIColor.black
                 tabBarController?.tabBar.barTintColor = UIColor.black
                 }else{
                                     
                 self.navigationController?.navigationBar.barTintColor = UIColor.red
                 tabBarController?.tabBar.barTintColor = UIColor.red
                                   }
                             
        
    }
    @IBAction func colourchange(_ sender: Any) {
        
        if ((sender as AnyObject).isOn == true){
          self.navigationController?.navigationBar.barTintColor = UIColor.black
          tabBarController?.tabBar.barTintColor = UIColor.black
          }else{
                              
          self.navigationController?.navigationBar.barTintColor = UIColor.red
          tabBarController?.tabBar.barTintColor = UIColor.red
                            }
                      
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
