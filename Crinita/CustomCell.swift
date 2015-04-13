//
//  CustomCell.swift
//  Hakuba
//
//  Created by Le Van Nghia on 1/14/15.
//  Copyright (c) 2015 Le Van Nghia. All rights reserved.
//

import UIKit
import Hakuba

class CustomCellModel : MYCellModel {
    let sourceName: String
    let sourceType: String
    let raDegs: String
    let decDegs: String
    let meanSourceRate: String
    
    init(sourceName: String,
        sourceType: String,
        raDegs: String,
        decDegs: String,
        meanSourceRate: String,
        selectionHandler: MYSelectionHandler) {

        self.sourceName = sourceName
        self.sourceType = sourceType
        self.raDegs = raDegs
        self.decDegs = decDegs
        self.meanSourceRate = meanSourceRate

        super.init(cellClass: CustomCell.self, height: 176, userData: nil, selectionHandler: selectionHandler)
    }
}

class CustomCell : MYTableViewCell {
    @IBOutlet weak var sourceNameLabel: MYLabel!
    @IBOutlet weak var sourceTypeLabel: MYLabel!
    @IBOutlet weak var meanSourceRateLabel: UILabel!
    @IBOutlet weak var decDegsLabel: UILabel!
    @IBOutlet weak var raDegsLabel: UILabel!

    override func configureCell(data: MYCellModel) {

        super.configureCell(data)

        if let sourceName = (data as? CustomCellModel)?.sourceName {
            sourceNameLabel.text = sourceName
        }
        
        if let sourceType = (data as? CustomCellModel)?.sourceType {
            sourceTypeLabel.text = sourceType
        }
        
        if let meanSourceRate = (data as? CustomCellModel)?.meanSourceRate {
            meanSourceRateLabel.text = meanSourceRate
        }
        
        if let raDegs = (data as? CustomCellModel)?.raDegs {
            raDegsLabel.text = raDegs
        }
        
        if let decDegs = (data as? CustomCellModel)?.decDegs {
            decDegsLabel.text = decDegs
        }

    }
}