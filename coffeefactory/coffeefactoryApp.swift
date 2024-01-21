//
//  coffeefactoryApp.swift
//  coffeefactory
//
//  Created by yuncoffee on 12/12/23.
//

import SwiftUI
import CoffeeFactorySwift

@main
struct coffeefactoryApp: App {
    init() {
        CoffeeFactoryFont.registerFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
