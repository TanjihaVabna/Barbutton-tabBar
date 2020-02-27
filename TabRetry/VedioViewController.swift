

import UIKit

class VedioViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! dataclass
        let  videourl  = NSURL(string: "https://www.youtube.com/watch?v=xzkx7gSvXQ4")
        let  requestObj = URLRequest(url: videourl! as URL)
        cell.webView.loadRequest(requestObj)
        return cell
        
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
}
