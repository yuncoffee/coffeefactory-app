//
//  ContentView.swift
//  coffeefactory
//
//  Created by yuncoffee on 12/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TypoTestView()
                .tabItem {
                    Label("Typography", systemImage: "textformat")
                }
            SymbolTestView()
                .tabItem {
                    Label("symbol", systemImage: "star.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
