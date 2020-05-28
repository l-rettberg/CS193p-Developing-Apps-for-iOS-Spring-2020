//
//  ContentView.swift
//  Memorize
//
//  Created by Lance Rettberg on 5/27/20.
//  Copyright © 2020 Lance Rettberg. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }.aspectRatio(2/3, contentMode: .fit) // MARK: - Homework 1
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font( viewModel.cards.count == 10 ? Font.headline : Font.largeTitle  )
       //.font(Font.largeTitle)
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
                
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
