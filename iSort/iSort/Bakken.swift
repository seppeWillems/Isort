//
//  Bakken.swift
//  iSort
//
//  Created by Brent Herckens on 12/12/14.
//  Copyright (c) 2014 Groep 1 - Euro Gijbels. All rights reserved.
//

import Foundation



import UIKit

class Bakken: NSObject {
    var id:Int
    var naam:String
    var afbeelding:String

    
    init(id:Int, naam:String, afbeelding:String) {
        self.id=id
        self.naam = naam
        self.afbeelding = afbeelding
        super.init()
    }
}