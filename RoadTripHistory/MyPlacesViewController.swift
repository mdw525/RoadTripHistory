//
//  MyPlacesViewController.swift
//  RoadTripHistory
//
//  Created by Michael D Worley on 5/12/16.
//  Copyright © 2016 Michael D Worley. All rights reserved.
//

import UIKit


class MyPlacesViewController: ViewController {

    @IBOutlet weak var MainTitleBox: UILabel!
    
    @IBOutlet weak var SmallTitle1: UILabel!
    @IBOutlet weak var Description1: UITextField!
    @IBOutlet weak var Photo1: UIImageView!
    @IBOutlet weak var Address1: UIButton!
    
    @IBOutlet weak var SmallTitle2: UILabel!
    @IBOutlet weak var Description2: UITextField!
    @IBOutlet weak var Photo2: UIImageView!
    @IBOutlet weak var Address2: UIButton!
    
    @IBOutlet weak var SmallTitle3: UILabel!
    @IBOutlet weak var Description3: UITextField!
    @IBOutlet weak var Photo3: UIImageView!
    @IBOutlet weak var Address3: UIButton!
    
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
