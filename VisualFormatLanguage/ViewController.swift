//
//  ViewController.swift
//  VisualFormatLanguage
//
//  Created by Kamal on 23/04/2015.
//  Copyright (c) 2015 Kamal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var viewBlue:UIView!
    var viewRed:UIView!
    var viewGreen:UIView!
    override func viewDidLoad() {
        initViews()
        createConstraints()
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initViews()->Void
    {
    //Initialize Views
        viewBlue = UIView()
        viewRed = UIView()
        viewGreen = UIView()
    //Prep auto layout
      viewBlue.setTranslatesAutoresizingMaskIntoConstraints(false)
      viewRed.setTranslatesAutoresizingMaskIntoConstraints(false)
      viewGreen.setTranslatesAutoresizingMaskIntoConstraints(false)
    //Set Color to distingush the Views
        viewBlue.backgroundColor = UIColor.blueColor()
        viewRed.backgroundColor = UIColor.redColor()
        viewGreen.backgroundColor = UIColor.greenColor()
    // Add Views to the main View
        self.view.addSubview(viewBlue)
        self.view.addSubview(viewRed)
        self.view.addSubview(viewGreen)
        }
    func createConstraints() ->Void
    {
    //View to add constraints to 
        let views = Dictionary(dictionaryLiteral: ("blue",viewBlue),("red",viewRed),("green",viewGreen))
    //Horizontal constraints 
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[red(>=100,<=200)]-0-[blue(==red)]-10-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(horizontalConstraints)
    // Vertical constraints
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|[red]|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(verticalConstraints)
    }

}
