//
//  OverzichtViewController.swift
//  iSort
//
//  Created by Brent Herckens on 10/12/14.
//  Copyright (c) 2014 Groep 1 - Euro Gijbels. All rights reserved.
//

import UIKit
import QuartzCore

class OverzichtViewController: UIViewController //,lineChartDelegate
{
    
    @IBOutlet weak var headerLogo: UIImageView!
    
    var label = UILabel()
    var lineChart: LineChart?
    
    @IBOutlet weak var chartView1: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Logo opmaak border onderaan afbeelding
        StyleClass().borderBottom(headerLogo)
        
        grafiekje(chartView1)

        
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    /**
    * Line chart delegate method.
    */
    /*
    func didSelectDataPoint(x: CGFloat, yValues: Array<CGFloat>) {
        label.text = "x: \(x)     y: \(yValues)"
    }
    */
    
    
    /**
    * Redraw chart on device rotation.
    */
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        if let chart = lineChart {
            chart.setNeedsDisplay()
        }
    }
    
    func grafiekje(chartView: UIView){
    
        //VoorbeeldChart
        var views: Dictionary<String, AnyObject> = [:]
        
        label.text = "Voorbeeldgrafieken"
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        label.textAlignment = NSTextAlignment.Center
        chartView.addSubview(label)
        views["label"] = label
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[label]-|", options: nil, metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-80-[label]", options: nil, metrics: nil, views: views))
        
        var data: Array<CGFloat> = [3, 4, 9, 11, 13, 15]
        var data2: Array<CGFloat> = [1, 3, 5, 13, 17, 20]
        
        lineChart = LineChart()
        lineChart?.dotsVisible = false
        lineChart!.areaUnderLinesVisible = true
        lineChart!.addLine(data)
        lineChart!.addLine(data2)
        lineChart!.setTranslatesAutoresizingMaskIntoConstraints(false)
        //lineChart!.delegate = self
        
        
        chartView.addSubview(lineChart!)
        views["chart"] = lineChart
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[chart]-|", options: nil, metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[label]-[chart(==200)]", options: nil, metrics: nil, views: views))
        
        self.view.addSubview(chartView)
    
    
    }
    
    
}

