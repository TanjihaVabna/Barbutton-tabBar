

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var modelData = [MyModel]()
            //var titleName = [String]()
            var imageName = [String]()
            override func viewDidLoad() {
                super.viewDidLoad()
                tableView.dataSource = self
                tableView.delegate = self
                fatechData()
                
            }
            func fatechData()  {
                      let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
                      URLSession.shared.dataTask(with: url!){(data,response,error) in
                          if error == nil{
                              do{
                                  let myData = try! JSONDecoder().decode([MyModel].self, from: data!)
                                  DispatchQueue.main.async {
                                      for n in myData{
                                        self.imageName.append(n.url)
                                      }
                                      self.tableView.reloadData()
                                  }
                              }catch{
                                  print("Nothing Found")
                              }
                          }
                          
                      }.resume()
                      
                  }
             

        }

    extension NewsViewController: UITableViewDataSource,UITableViewDelegate{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return imageName.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! NewsTableViewCell
                               let url = URL(string: imageName[indexPath.row])
                               DispatchQueue.global().async {
                                   let data = try?Data(contentsOf: url!)
                                   DispatchQueue.main.async {
                                       cell.imageCell.image = UIImage(data: data!)
                                   }
                                   
                                   
                                   
                               }
                               cell.accessoryType = .disclosureIndicator
                          
                               return cell
                               
                    }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 300
            
        }


            }
        

