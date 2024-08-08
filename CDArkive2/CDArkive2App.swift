//
//  CDArkive2App.swift
//  CDArkive2
//
//  Created by Mark Strijdom on 07/08/2024.
//

import SwiftData
import SwiftUI

@main
struct CDArkive2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: SongCollection.self)
    }
}
