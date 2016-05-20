//
//  MyTextViewController.swift
//  RoadTripHistory
//
//  Created by Michael D Worley on 5/12/16.
//  Copyright © 2016 Michael D Worley. All rights reserved.
//

import UIKit

class MyTextViewController: ViewController {

    @IBOutlet weak var TitleBox: UILabel!
    @IBOutlet weak var TextBodyBox: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //if(LocationValues.CurrentLocation!.title!=nil){
         // TitleBox.text=LocationValues.CurrentLocation!.title
        //TextBodyBox.text=LocationValues.CurrentLocation!.title
        //}
        //else{
        //    TitleBox.text=""
        //   TextBodyBox.text=""
        //}
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
