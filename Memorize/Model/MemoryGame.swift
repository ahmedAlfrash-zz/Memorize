//
//  MemoryGame.swift
//  Memorize
//
//  Created by ahmed alfrash on 6/27/20.
//

import Foundation

struct MemoryGame<T> {
    
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card choosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> T) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
    }
    
    struct Card: Identifiable{
        var id: Int
        var isFaceUp = true
        var isMatched = false
        var content: T
    }
}
