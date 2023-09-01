//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Bob Moriasi on 8/27/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var viewModel: EmojiMemoryGame = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
