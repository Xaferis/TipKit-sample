//
//  ContentView.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import SwiftUI
import TipKit

struct ContentView: View {
    
    @AppStorage("shouldClearTipKitDatastore") private var shouldClearTipKitDatastore: Bool = false
    
    var tip = EventModelRuleTip()

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
                
                NavigationLink {
                    OptionPopoverTipView()
                } label: {
                    Text("Option Popover tip")
                }
                
                NavigationLink {
                    ParameterRuleClassicTipView()
                } label: {
                    Text("Parameter Rule Classic tip")
                }
                
                NavigationLink {
                    EventRulePopoverTipView()
                } label: {
                    Text("Event Rule Popover tip")
                }
                
                NavigationLink {
                    CombinedRuleClassicTipView()
                } label: {
                    Text("Combined Rule Classic tip")
                }
                
                NavigationLink {
                    EventModelTipTriggerView()
                } label: {
                    Text("Event Model Rule trigger view")
                }
                
                NavigationLink {
                    GroupedTipView()
                } label: {
                    Text("Grouped Tip view")
                }

                NavigationLink {
                    CustomStyleTipView()
                } label: {
                    Text("Custom Tip view style")
                }
            }
            .navigationTitle("TipKit Sample")
            .safeAreaInset(edge: .bottom) {
                Button(action: {
                    shouldClearTipKitDatastore = true
                    
                    exit(0)
                }) {
                    Text("Vymazať TipKit cache")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .popoverTip(tip)
            }
        }

    }

}

#Preview {
    ContentView()
}
