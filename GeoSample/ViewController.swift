//
//  ViewController.swift
//  GeoSample
//
//  Created by sakura on 2018/03/01.
//  Copyright © 2018年 Keisuke Okamoto. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var radiusTextField: UITextField!
    
    let locationManager = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()


    }

    
    @IBAction func didTapRegisterButton(_ sender: Any) {
            
        let cooridate = mapView.centerCoordinate
        let radius = Double(radiusTextField.text!) ?? 0
        
        let region = CLCircularRegion(center: cooridate, radius: radius, identifier: UUID().uuidString)
        region.notifyOnEntry = true
        
        locationManager.startMonitoring(for: region)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

