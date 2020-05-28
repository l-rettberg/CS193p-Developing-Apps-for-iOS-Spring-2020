//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lance Rettberg on 5/27/20.
//  Copyright © 2020 Lance Rettberg. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "🤡", "☠️", "🤖", "🦋", "🐳", "🌈", "🧲", "❤️", "💩"].shuffled() // Homework 1 - Extra Credit
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5) ) {pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
