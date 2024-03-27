//
//  WooAppApp.swift
//  WooApp
//
//  Created by Yale Huang on 2024/1/7.
//

import SwiftUI

@main
struct WooAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomePageView()
                    .navigationTitle("Home")
            }
        }
    }
}
