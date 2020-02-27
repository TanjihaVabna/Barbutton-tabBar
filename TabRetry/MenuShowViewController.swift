
import UIKit

class MenuShowViewController: UITabBarController {
    
    var fvc = UIViewController()
    
    @IBOutlet weak var TabBar: UIBarButtonItem!
    let SlideInHandlr = SooninSlideInHandler()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SlideInHandlr.selectionDelegate = self
               
    }
    
    @IBAction func TabAction(_ sender: Any) {
        var myMenuSetting : [Setting] = []
                         myMenuSetting.append(Setting(name: "Home", imageName: "home"))
                         myMenuSetting.append(Setting(name: "About", imageName: "about"))
                         myMenuSetting.append(Setting(name: "Settings", imageName: "settings"))
                         myMenuSetting.append(Setting(name: "Social", imageName: "social"))
                        
                         
                         SlideInHandlr.settings = myMenuSetting
                         SlideInHandlr.menuBackColor = UIColor.white

                         SlideInHandlr.showSlideInMenu(menuSide: .Left)
    }
    
}
extension UIViewController {
        func add(_ child: UIViewController, frame: CGRect? = nil) {
            addChild(child)
            if let frame = frame {
                child.view.frame = frame
            }
            view.addSubview(child.view)
            child.didMove(toParent: self)
        }
        func remove() {
            willMove(toParent: nil)
            view.removeFromSuperview()
            removeFromParent()

       }

    }
    extension MenuShowViewController: SelectionDelegate{
        func didTapSelect(menuSelection: String, description: String) {

            if menuSelection == "Home"{
               // fvc.remove()
                let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
               // fvc = vc
               // self.add(vc, frame: self.ContainerView.frame)
                self.navigationController?.pushViewController(vc, animated: true)
            }
            if menuSelection == "About"{
               // fvc.remove()
                let vc = storyboard?.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
               // fvc = vc
               // self.add(vc, frame: self.ContainerView.frame)
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
            if menuSelection == "Settings"{
               // fvc.remove()
                let vc = storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
               // fvc = vc
               // self.add(vc, frame: self.ContainerView.frame)
                self.navigationController?.pushViewController(vc, animated: true)
            }
            if menuSelection == "Social"{
                      // fvc.remove()
                       let vc = storyboard?.instantiateViewController(withIdentifier: "SocialViewController") as! SocialViewController
                      // fvc = vc
                      // self.add(vc, frame: self.ContainerView.frame)
                       self.navigationController?.pushViewController(vc, animated: true)
                   }
            
        }
        
        
    }
