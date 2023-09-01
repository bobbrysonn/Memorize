//
//  ContentView.swift
//  Memorize
//
//  Created by Bob Moriasi on 8/27/23.
//

import SwiftUI

struct ContentView: View
{
    // Get the view model
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            .padding()
            
            // Button to shuffle the cards
            Button {
                viewModel.shuffle()
            } label: {
                Text("Shuffle")
            }
        }
    }
    
    var cards: some View {
        LazyVGrid(
            columns: [GridItem(.adaptive(minimum: 85))],
            spacing: 10
        ) {
            ForEach(viewModel.cards.indices, id: \.self) { index in
                CardView(card: viewModel.cards[index]).aspectRatio(2/3, contentMode: .fill)
            }
        }
        .foregroundColor(.orange)
    }
}

struct CardView: View
{
    let card: MemoryGame<String>.Card
    
    var body: some View
    {
        ZStack
        {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(card.content).font(.largeTitle)
            }
            .opacity(card.isFaceUp ? 1 : 0)
            
            base.fill().opacity(card.isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
