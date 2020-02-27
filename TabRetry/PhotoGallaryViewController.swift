

import UIKit

class PhotoGallaryViewController: UIViewController{
    
    
    
    var imgdata = ["B1","B2","B3","B4","B5","B6","B7","B8","e1","e2","e3","e4","e5","p1","p2","p3","p4","p5","t1","t2","t3","t4","t5"]

    @IBOutlet weak var CollectionView: UICollectionView!
    
   
         override func viewDidLoad() {
             super.viewDidLoad()
             // Do any additional setup after loading the view.
         }


     }
     extension PhotoGallaryViewController:UICollectionViewDelegate,UICollectionViewDataSource{
         func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
             return imgdata.count
         }
         func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
             
             cell.img.layer.borderWidth = 1
             cell.img.layer.masksToBounds = false
             cell.img.layer.backgroundColor = UIColor.black.cgColor
             cell.img.layer.cornerRadius = cell.img.frame.height/2
             cell.img.clipsToBounds = true
             cell.img.image = UIImage(named: imgdata [indexPath.item])
             return cell
             
         }
         
         func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
             let image = UIImage(named: imgdata[indexPath.item])
             
             let imageInfo = GSImageInfo (image: image!, imageMode: .aspectFit)
             let transitionInfo = GSTransitionInfo(fromView: collectionView)
             let imageViewer = GSImageViewerController(imageInfo: imageInfo, transitionInfo: transitionInfo)
             imageViewer.dismissCompletion = {
                 print("dismiss called")
             }
             
             present(imageViewer,animated: true)
         }
         
     }


     
   


