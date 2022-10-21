//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by intozoom on 8/24/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
