//
//  ContentView.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    SimplePopoverTipView()
                } label: {
                    Text("Simple Popover tip")
                }

                NavigationLink {
                    SimpleClassicTipView()
                } label: {
                    Text("Simple Classic tip")
                }
                
                NavigationLink {
                    ActionPopoverTipView()
                } label: {
                    Text("Action Popover tip")
                }
                
                NavigationLink {
                    ActionClassicTipView()
                } label: {
                    Text("Action Classic tip")
                }
            }
            .navigationTitle("TipKit Sample")
        }

    }

}

#Preview {
    ContentView()
}
