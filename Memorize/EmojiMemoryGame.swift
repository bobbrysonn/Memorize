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
class EmojiMemoryGame {
    var model: MemoryGame<String>
    
    init(model: MemoryGame<String>) {
        self.model = model
    }
}
