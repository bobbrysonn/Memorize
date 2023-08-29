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
        }
        .foregroundColor(.orange)
        .padding(10)
    }
}

struct CardView: View
{
    var body: some View
    {
        ZStack
        {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(lineWidth: 2)
            VStack
            {
                Text("Hello world")
                Text("👻")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
