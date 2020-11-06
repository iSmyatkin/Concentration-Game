//
//  Game.swift
//  Concentration Game
//
//  Created by Иван Смяткин on 06.11.2020.
//

import Foundation

struct Game {

    var score = 0
    var flipCount = 0
    var cards = [Card]()
    
    func chooseCard() {    }
    func matchCards() {    }
    
    private func createDeckOfCards(pairsOfCards: Int) -> [Card] {
        var deckOfCards = [Card]()
        for _ in 1...pairsOfCards {
            let card = Card()
            deckOfCards += [card, card]
        }
        return deckOfCards
    }
    
    init(withPairsOfCards pairsOfCards: Int) {
        cards = createDeckOfCards(pairsOfCards: pairsOfCards)
    }
}

