

import UIKit
import GooglePlaces
import GoogleMaps


class HomeViewController: UIViewController {
    func mapView()  {
        let camera = GMSCameraPosition.camera(withLatitude: 23.805292, longitude: 90.369785, zoom: 20.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 23.805292, longitude: 90.369785)
        marker.map = mapView
        marker.title = "Bangladesh IT"
        marker.map = mapView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView()

    }

}
