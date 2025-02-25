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
    
    @AppStorage("shouldClearTipKitDatastore") private var shouldClearTipKitDatastore: Bool = false
    
    init() {
        do {
            if shouldClearTipKitDatastore {
                try Tips.resetDatastore()
                
                shouldClearTipKitDatastore.toggle()
            }
            
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
