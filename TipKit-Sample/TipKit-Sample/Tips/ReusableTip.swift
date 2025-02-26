//
//  ReusableTip.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import TipKit
import SwiftUI

struct ReusableTip: Tip {
    
    let visitedScreen: VisitedScreen
    
    var id: String {
        "ReusableTip-\(visitedScreen.name)"
    }

    var title: Text {
        Text("Páči sa ti produkt?")
    }


    var message: Text? {
        Text("Každý produkt si môžeš uložiť do obľubených.")
    }


    var image: Image? {
        Image(systemName: "star.fill")
    }

}

