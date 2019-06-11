//
//  NaviMap.swift
//  finalapp
//
//  Created by EA on 2019/6/10.
//  Copyright © 2019 EA. All rights reserved.
//

import UIKit
import MapKit

class NaviMap: UIViewController {

    @IBOutlet weak var mapnavi: MKMapView!
    
    var x:Float = 0
    var y:Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let location  = CLLocation(latitude: CLLocationDegrees(x), longitude: CLLocationDegrees(y))
        // Do any additional setup after loading the view.
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
        mapnavi.setRegion(region, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
