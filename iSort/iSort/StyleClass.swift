//
//  StyleImageClass.swift
//  iSort
//
//  Created by Brent Herckens on 10/12/14.
//  Copyright (c) 2014 Groep 1 - Euro Gijbels. All rights reserved.
//

import UIKit

class StyleClass{

    func borderBottom(view: UIImageView){
    
        var bottomBorder = CALayer()
        bottomBorder.frame = CGRectMake(0.0, view.frame.size.height - 1, view.frame.size.width, 2.0);
        bottomBorder.backgroundColor = UIColor.blackColor().CGColor
        view.layer.addSublayer(bottomBorder)
    
    }
    
}
