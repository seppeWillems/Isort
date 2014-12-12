//
//  BakCell.swift
//  iSort
//
//  Created by Brent Herckens on 12/12/14.
//  Copyright (c) 2014 Groep 1 - Euro Gijbels. All rights reserved.
//

import UIKit

class BakCell: UITableViewCell {
    
    @IBOutlet weak var naamLabel: UILabel!
    @IBOutlet weak var bakImageView: UIImageView!
    @IBOutlet weak var txtAantal: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    
    var stepperValue: String = ""
    
    @IBAction func stepperAction(sender: UIStepper) {
        stepperValue = NSString(format: "%2.0f", stepper.value)
        self.txtAantal.text = stepperValue

    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}