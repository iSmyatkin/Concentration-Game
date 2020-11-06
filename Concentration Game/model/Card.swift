//
//  Card.swift
//  Concentration Game
//
//  Created by Иван Смяткин on 06.11.2020.
//

import Foundation

struct Card {
    
    let identifier: Int
    var isFacedUp = false
    var isMatchedUp = false
    
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
