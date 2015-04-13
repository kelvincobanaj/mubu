//
//  SettingsController.swift
//  Crinita
//
//  Created by Kelvin Çobanaj on 07/04/15.
//  Copyright (c) 2015 Spiranca. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    
    @IBAction func backTapped(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: {})
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pw_maze_white")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
