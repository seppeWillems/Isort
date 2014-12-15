//
//  inkomendViewController.swift
//  iSort
//
//  Created by Brent Herckens on 10/12/14.
//  Copyright (c) 2014 Groep 1 - Euro Gijbels. All rights reserved.
//

import UIKit


class InkomendViewController: UITableViewController {
    
    

      var bakken:[Bakken] = bakData
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return bakken.count
        
    }
    
    
override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bakInkomendCell", forIndexPath: indexPath) as BakCell
    
    
    let bak = bakken[indexPath.row] as Bakken
    println(indexPath)
    
    
    cell.naamLabel.text = bak.naam
    
    cell.bakImageView.image = UIImage(named: bak.afbeelding)
    cell.txtAantal.text = cell.stepperValue
        return cell
    }
    
    
    
    
    
    
    
}