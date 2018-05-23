//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Pouria Delfanazari on 2018-05-22.
//  Copyright © 2018 Pouria Delfanazari. All rights reserved.
//

import Foundation

class Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
