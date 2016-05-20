//
//  AppDelegate.swift
//  RoadTripHistory
//
//  Created by Michael D Worley on 4/17/16.
//  Copyright © 2016 Michael D Worley. All rights reserved.
//

import UIKit
import MapKit
import Firebase

class TripLocation: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}

struct LocationValues{
    static var initialLocation: CLLocationCoordinate2D?
    static var Assisgned : Bool?
    static var LocationsList : [TripLocation]?
    static var CurrentLocation : TripLocation?
    static let regionRadius: CLLocationDistance = 1000
    static var textBody : String?
    static var locationManager = CLLocationManager()
}


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
        
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let settings = UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
        UIApplication.sharedApplication().registerForRemoteNotifications()
        LocationValues.Assisgned = false
        //super.registerForRemoteNotifications();
        // Override point for customization after application launch.
        LocationValues.LocationsList?.append(TripLocation(title: "Celilo Falls", coordinate: CLLocationCoordinate2D(latitude: 45.650565, longitude: -120.960659)))
        LocationValues.LocationsList?.append(TripLocation(title: "Starvation Creek", coordinate: CLLocationCoordinate2D(latitude: 45.687534, longitude: -121.690806)))
        LocationValues.LocationsList?.append(TripLocation(title: "Oregon Steam Navigation Company", coordinate: CLLocationCoordinate2D(latitude: 45.600324, longitude: -122.619479)))
        return true
    }
        
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


