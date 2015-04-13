//
//  Transient.swift
//  Crinita
//
//  Created by Kelvin Çobanaj on 08/04/15.
//  Copyright (c) 2015 Spiranca. All rights reserved.
//

import Foundation
import Realm

// Transient model
class Transient: RLMObject {

    dynamic var id = 0
    dynamic var sourceName = ""
    dynamic var raDegs = ""
    dynamic var decDegs = ""
    dynamic var alternateName = ""
    dynamic var sourceType = ""
    dynamic var today = ""
    dynamic var yesterday = ""
    dynamic var tenday = ""
    dynamic var mean = ""
    dynamic var peak = ""
    dynamic var days = ""
    dynamic var lastDays = ""
    dynamic var url = ""
    
    override class func primaryKey() -> String {
        return "id"
    }

}
