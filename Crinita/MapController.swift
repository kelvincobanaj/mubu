//
//  MapController.swift
//  Mubu
//
//  Created by Kelvin Çobanaj on 11/04/15.
//  Copyright (c) 2015 Spiranca. All rights reserved.
//

import UIKit

class MapController: UIViewController {
    
    var url = "http://swift.gsfc.nasa.gov/results/transients/weak/QSOB0003-066"
    
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func backTapped(sender: UIBarButtonItem) {
        
        self.dismissViewControllerAnimated(true, completion: {})
    }

    @IBAction func settingsTapped(sender: UIBarButtonItem) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let destination = storyBoard.instantiateViewControllerWithIdentifier("Settings") as SettingsController
        
        self.presentViewController(destination, animated: true, completion: nil)
    }

    @IBAction func analysisTapped(sender: AnyObject) {
        let data = NSData(contentsOfURL: NSURL(string: "\(url).png")!)
        imageView.image = UIImage(data: data!)
    }

    @IBAction func missionTapped(sender: UIBarButtonItem) {
        let data = NSData(contentsOfURL: NSURL(string: "\(url).mission.png")!)
        imageView.image = UIImage(data: data!)
    }

    @IBAction func orbitTapped(sender: UIBarButtonItem) {
        let data = NSData(contentsOfURL: NSURL(string: "\(url).orbit.png")!)
        imageView.image = UIImage(data: data!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        
        let data = NSData(contentsOfURL: NSURL(string: "\(url).png")!)
        imageView.image = UIImage(data: data!)
        
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pw_maze_white")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
