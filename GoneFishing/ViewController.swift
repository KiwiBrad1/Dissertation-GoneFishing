//
//  ViewController.swift
//  GoneFishing
//
//  Created by student on 25/01/2022.
//

import UIKit
import GoogleMaps
import CoreLocation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mapView: GMSMapView!
    
    
    

    @IBOutlet weak var chatButton: UIButton! /* Image reference: https://cdn-icons-png.flaticon.com/512/134/134914.png*/
    
    @IBOutlet weak var ButtonArrayView: UIView!
    
    @IBOutlet weak var calendarButton: UIButton! /* Image reference: https://cdn-icons-png.flaticon.com/512/1057/1057838.png*/
    
    @IBOutlet weak var helpButton: UIButton! /* Image reference: https://cdn-icons-png.flaticon.com/512/189/189665.png*/
    
    @IBOutlet weak var weatherButton: UIButton! /* Image reference: https://i.pinimg.com/originals/77/0b/80/770b805d5c99c7931366c2e84e88f251.png*/
    
    @IBOutlet weak var burgerButton: UIButton! /* Image reference: https://cdn2.iconfinder.com/data/icons/basic-gradient/512/xxx027-512.png*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        // Do any additional setup after loading the view.
        
    }

    func setupView(){
        self.view.bringSubviewToFront(ButtonArrayView)
        ButtonArrayView.layer.cornerRadius = 10
        ButtonArrayView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        
        helpButton.layer.cornerRadius = 25
        chatButton.layer.cornerRadius = 25
        weatherButton.layer.cornerRadius = 25
        calendarButton.layer.cornerRadius = 25
        
        helpButton.layer.masksToBounds = true
        chatButton.layer.masksToBounds = true
        weatherButton.layer.masksToBounds = true
        calendarButton.layer.masksToBounds = true
    }

}

