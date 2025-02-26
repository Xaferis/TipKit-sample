//
//  EventModelTipTriggerView.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import SwiftUI
import TipKit

struct EventModelTipTriggerView: View {
    
    static let name = "EventModelTipTriggerView"
    
    var tip = SimpleTip()

    var body: some View {
        VStack {
            Text("Trigger activated")
        }
        .onDisappear() {
            EventModelRuleTip.didViewScreen.sendDonation(.init(name: Self.name))
        }
    }

}

#Preview {
    EventModelTipTriggerView()
}
