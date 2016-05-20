//
//  MyMapViewViewController.swift
//  RoadTripHistory
//
//  Created by Michael D Worley on 5/12/16.
//  Copyright © 2016 Michael D Worley. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class MyMapViewController: ViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet var mapView : MKMapView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Ask for Authorization from the User.
        LocationValues.locationManager.requestAlwaysAuthorization()
        // For use in foreground
        LocationValues.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            LocationValues.locationManager.delegate = self
            LocationValues.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            LocationValues.locationManager.startUpdatingLocation()
        }
        
        //set inital location
        LocationValues.initialLocation=CLLocationCoordinate2D(latitude: 47.753929, longitude: -117.417164)
        
        PositionMap(LocationValues.initialLocation!)
    }

    func PositionMap(location: CLLocationCoordinate2D){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location, LocationValues.regionRadius*2.0 ,LocationValues.regionRadius*2.0)
        myMap.setRegion(coordinateRegion, animated: true)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)!;

    }

}

