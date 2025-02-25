//
//  TipKit_SampleApp.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import SwiftUI
import TipKit

@main
struct Application: App {
    
    init() {
        do {
            try Tips.configure()
        } catch {
            print("Error initializing TipKit \(error.localizedDescription)")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

}
