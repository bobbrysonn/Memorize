//
//  ContentView.swift
//  Memorize
//
//  Created by Bob Moriasi on 8/27/23.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        HStack
        {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View
{
    @State var isFaceUp: Bool = false
    
    var body: some View
    {
        ZStack
        {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            
            if (isFaceUp)
            {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻")
                    .font(.largeTitle)
            }
            else
            {
                base.fill()
            }
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
