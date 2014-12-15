//
//  LoginViewController.swift
//  iSort
//
//  Created by Brent Herckens on 10/12/14.
//  Copyright (c) 2014 Groep 1 - Euro Gijbels. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var btnAanmelden: UIButton!
    @IBOutlet weak var headerLogo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Logo opmaak border onderaan afbeelding
       StyleClass().borderBottom(headerLogo)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    
    
}