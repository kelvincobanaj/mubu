//
//  FirstViewController.swift
//  Crinita
//
//  Created by Kelvin Çobanaj on 30/03/15.
//  Copyright (c) 2015 Spiranca. All rights reserved.
//

import UIKit
import Hakuba
import Realm


class BlackHolesController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private var hakuba: Hakuba!

    @IBAction func settingsTapped(sender: UIBarButtonItem) {
    
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let destination = storyBoard.instantiateViewControllerWithIdentifier("Settings") as SettingsController
        
        self.presentViewController(destination, animated: true, completion: nil)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pw_maze_white")!)
        
        let realm = RLMRealm.defaultRealm()
        
        //Creating a book with the same primary key as a previously saved book
//        let transient = Transient()
//        transient.sourceName = "Black Hole"
//        transient.raDegs = "Ra Degs: 1.400"
//        transient.decDegs = "Dec Degs 1.700"
//        transient.mean = "Mean Rate Source: 3mCrab"
        
        // Update an object with a primary key
//        realm.beginWriteTransaction()
//        Transient.createOrUpdateInRealm(realm, withObject: transient)
//        realm.commitWriteTransaction()
        
        hakuba = Hakuba(tableView: tableView)
        hakuba.registerCellNib(CustomCell)

        var index = 0
        for transient in Transient.allObjects() {
            let transient = transient as Transient

            index++

            hakuba[index].append(CustomCellModel(
                sourceName: transient.sourceName,
                sourceType: transient.sourceType,
                raDegs: transient.raDegs,
                decDegs: transient.decDegs,
                meanSourceRate: transient.mean
            ) { _ in

                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

                let destination = storyBoard.instantiateViewControllerWithIdentifier("Transient") as TransientController

                destination.transient = transient

                self.presentViewController(destination, animated: true, completion: nil)

            }).slide(.Fade)
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
