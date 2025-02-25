//
//  SimpleActionTip.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import TipKit
import SwiftUI

struct ActionTip: Tip {

    var title: Text {
        Text("Páči sa ti produkt?")
    }


    var message: Text? {
        Text("Každý produkt si môžeš uložiť do obľubených.")
    }


    var image: Image? {
        Image(systemName: "star.fill")
    }
    
    var actions: [Action] {
        [
            Tip.Action(id: "ok_button", perform: {}) {
                Text("Ok")
            },
            Tip.Action(id: "more_info_button", title: "Viac info") {
                // nejaka akcia
            }
        ]
    }

}

