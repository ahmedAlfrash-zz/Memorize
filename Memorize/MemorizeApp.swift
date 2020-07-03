//
//  MemorizeApp.swift
//  Memorize
//
//  Created by ahmed alfrash on 6/26/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
