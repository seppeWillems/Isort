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
            println("inkomend")
            //loadController(InkomendViewController)
        case 1:
            println("uitgaand")
        case 2:
            println("beschadigd")
        default:
            break;
        }
    }
    
    
    func loadController(controller: UIViewController){
    
        self.addChildViewController(controller)
        self.view.addSubview(controller.view)
        self.containerRegistratie = controller.view
    
    }

}

