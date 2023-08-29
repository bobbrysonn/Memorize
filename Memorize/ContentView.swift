//
//  ContentView.swift
//  Memorize
//
//  Created by Bob Moriasi on 8/27/23.
//

import SwiftUI

struct ContentView: View
{
    @State var cardCount: Int = 3
    let emojis: [String] = ["👻", "🎃", "🕷️", "😈", "💀", "🕸️", "🧙‍♀️", "🙀", "👹", "😱", "☠️", "🍭", "👺", "👿", "😳"]
    let maxCardCount: Int = 15
    
    var body: some View
    {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                    ForEach(0..<cardCount, id: \.self) { index in
                        CardView(emojis[index])
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .foregroundColor(.orange)
                 
            }
            
            // Spacer
            Spacer()
            
            // Buttons
            HStack {
                // Add button
                Button("Add card") {
                    cardCount += 1
                }
                .disabled(cardCount + 1 > maxCardCount)
                
                // Reset button
                Button("Reset") {
                    cardCount = 3
                }
                
                // Remove button
                Button("Remove card") {
                    cardCount -= 1
                }
                .disabled(cardCount - 1 < 3)
            }
        }
        .padding()
    }
}

struct CardView: View
{
    @State var isFaceUp: Bool = false
    let content: String
    
    init(_ content: String, isFaceUp: Bool = false) {
        self.content = content
        self.isFaceUp = isFaceUp
    }
    
    var body: some View
    {
        ZStack
        {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
