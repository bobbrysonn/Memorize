//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Bob Moriasi on 9/1/23.
//

import Foundation

/**
 A representation of the card game
 
 The struct is simply a basic respresentation of what the game will be like.
 */
struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    /**
     A represention of an individual card
     */
    struct Card {
        var content: CardContent
        var isFaceUp: Bool
        var isMatched: Bool
    }
}
