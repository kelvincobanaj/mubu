//
//  SecondViewController.swift
//  Crinita
//
//  Created by Kelvin Çobanaj on 30/03/15.
//  Copyright (c) 2015 Spiranca. All rights reserved.
//

import UIKit

class FlareStarsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pw_maze_white")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func settingTapped(sender: UIBarButtonItem) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let destination = storyBoard.instantiateViewControllerWithIdentifier("Settings") as SettingsController
        
        self.presentViewController(destination, animated: true, completion: nil)
    }
    
    
}
