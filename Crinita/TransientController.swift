//
//  NewsController.swift
//  Crinita
//
//  Created by Kelvin Çobanaj on 07/04/15.
//  Copyright (c) 2015 Spiranca. All rights reserved.
//

import UIKit

class TransientController: UIViewController {

    @IBOutlet weak var sourceNameLabel: UILabel!

    @IBOutlet weak var raDegsLabel: UILabel!

    @IBOutlet weak var decDegsLabel: UILabel!

    @IBOutlet weak var alternateNameLabel: UILabel!

    @IBOutlet weak var sourceTypeLabel: UILabel!

    @IBOutlet weak var todayLabel: UILabel!

    @IBOutlet weak var yesterdayLabel: UILabel!

    @IBOutlet weak var tendayLabel: UILabel!

    @IBOutlet weak var meanLabel: UILabel!

    @IBOutlet weak var peakLabel: UILabel!

    @IBOutlet weak var daysLabel: UILabel!

    @IBOutlet weak var lastDaysLabel: UILabel!
    
    var sourceName: String?
    var transient: Transient?

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        sourceNameLabel.text = transient?.sourceName

        raDegsLabel.text = transient?.raDegs

        decDegsLabel.text = transient?.decDegs

        alternateNameLabel.text = transient?.alternateName

        sourceTypeLabel.text = transient?.sourceType

        todayLabel.text = transient?.today

        yesterdayLabel.text = transient?.yesterday

        tendayLabel.text = transient?.tenday

//        meanLabel.text = transient?.mean
        
        meanLabel.text = "3 mCrab"

        peakLabel.text = transient?.peak

        daysLabel.text = transient?.days

        lastDaysLabel.text = transient?.lastDays

    }
    
    @IBAction func backTapped(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: {})
    }

    @IBAction func scaledMapTapped(sender: UIBarButtonItem) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let destination = storyBoard.instantiateViewControllerWithIdentifier("ScaledMap") as MapController
        
        self.presentViewController(destination, animated: true, completion: nil)
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
