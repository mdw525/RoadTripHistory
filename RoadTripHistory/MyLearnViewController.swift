//
//  MyLearnViewController.swift
//  RoadTripHistory
//
//  Created by Michael D Worley on 5/12/16.
//  Copyright © 2016 Michael D Worley. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MyLearnViewController: ViewController {

    //@IBOutlet weak var TitleBox: UILabel!
    //@IBOutlet weak var TextBodyBox: UITextView!
    //@IBOutlet weak var PlaceView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
