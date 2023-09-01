//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Bob Moriasi on 9/1/23.
//

import Foundation

/**
 A model representing the card game
 
 The struct is simply a basic respresentation of what the game will be like.
 */
struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    public init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        self.cards = []
        
        // Populate the cards
        for index in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(index)
            
            self.cards.append(Card(content: content))
            self.cards.append(Card(content: content))
        }
    }
    
    /**
     A represention of an individual card
     */
    public struct Card {
        let content: CardContent
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        
        mutating func choose() {
            self.isFaceUp.toggle()
        }
    }
    
    public func choose(card: MemoryGame<String>.Card) {
        
    }
    
    public mutating func shuffle() {
        cards.shuffle()
    }
}
