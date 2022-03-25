//
//  Location.swift
//  GoneFishing
//
//  Created by student on 25/01/2022.
//

import Foundation
import UIKit
import CoreLocation
import MapKit

class LiveLocation: NSObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    var delegate: LiveLocationDelegate?
    
    func privacy() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
}

protocol LiveLocationDelegate{
    func start()
    func stop()
}
