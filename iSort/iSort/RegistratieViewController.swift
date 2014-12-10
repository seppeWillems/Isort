//
//  FirstViewController.swift
//  iSort
//
//  Created by Brent Herckens on 8/12/14.
//  Copyright (c) 2014 Groep 1 - Euro Gijbels. All rights reserved.
//

import UIKit

class RegistratieViewController: UIViewController {

    @IBOutlet weak var headerLogo: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var containerRegistratie: UIView!
    @IBOutlet weak var containerRegistratie2: UIView!

    @IBOutlet weak var containerRegistratie3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

       
       
        //Logo opmaak border onderaan afbeelding
        StyleClass().borderBottom(headerLogo)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func indexChanged(sender: UISegmentedControl) {
        
        
        
        switch sender.selectedSegmentIndex {
        case 0:
            containerRegistratie.hidden = false
            containerRegistratie2.hidden = true
            containerRegistratie3.hidden = true
            println("inkomend")
            
        case 1:
            containerRegistratie.hidden = true
            containerRegistratie2.hidden = false
            containerRegistratie3.hidden = true
            println("uitgaand")

        case 2:
            containerRegistratie.hidden = true
            containerRegistratie2.hidden = true
            containerRegistratie3.hidden = false
            println("beschadigd")

        default:
            break;
        }
        
        //self.transitionFromViewController(, toViewController: nar, duration: 0.5, options: nil, animations: nil,completion:nil)
    }
    


}

