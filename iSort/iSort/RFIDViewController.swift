//
//  SecondViewController.swift
//  iSort
//
//  Created by Brent Herckens on 8/12/14.
//  Copyright (c) 2014 Groep 1 - Euro Gijbels. All rights reserved.
//

import UIKit


class RFIDViewController: UIViewController {
    
    
    @IBOutlet weak var headerLogo: UIImageView!
    @IBOutlet weak var printRFID: UIButton!

    @IBAction func printRFID(sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Logo opmaak border onderaan afbeelding
        StyleClass().borderBottom(headerLogo)

        //Button PrintRFID een border geven
        printRFID.layer.borderWidth = 2
        printRFID.layer.borderColor = UIColor.blackColor().CGColor
        printRFID.layer.cornerRadius = 10
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

