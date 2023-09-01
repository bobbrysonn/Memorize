//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Bob Moriasi on 9/1/23.
//

import SwiftUI

/**
 View model class for the game
 */
class EmojiMemoryGame: ObservableObject {
    // Make it private so the view can't access
    @Published private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 6) { index in
        ["👻", "🎃", "🕷️", "😈", "💀", "🕸️", "🧙‍♀️", "🙀", "👹", "😱", "☠️", "🍭", "👺", "👿", "😳"][index]
    }
    
    // Make cards accessible
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents
    
    public func shuffle() {
        model.shuffle()
    }
    
    // Make the choose card function accessible
    public func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
