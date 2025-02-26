//
//  EventModelRuleTip.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import TipKit
import SwiftUI

struct VisitedScreen: Codable, Sendable {
    
    var name: String
    
}


struct EventModelRuleTip: Tip {
    
    static var didViewScreen = Tips.Event<VisitedScreen>(id: "didViewScreen")

    var title: Text {
        Text("Zmizli ti nejake tip boxy?")
    }


    var message: Text? {
        Text("Vymaž si cache a appka bude ako nová!")
    }


    var image: Image? {
        Image(systemName: "lightbulb.fill")
    }
    
    var rules: [Rule] {
        #Rule(Self.didViewScreen) { event in
            event.donations.filter({ $0.name == "EventModelTipTriggerView" }).count > 0
        }
    }

}

