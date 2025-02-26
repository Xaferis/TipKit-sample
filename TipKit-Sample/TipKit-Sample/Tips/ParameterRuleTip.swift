//
//  ParameterRuleTip.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import TipKit
import SwiftUI

struct ParameterRuleTip: Tip {
    
    @Parameter
    static var hasAddedToFavorites: Bool = false

    var title: Text {
        Text("Páči sa ti produkt?")
    }


    var message: Text? {
        Text("Neváhaj a kúp si ho už teraz!")
    }


    var image: Image? {
        Image(systemName: "hand.thumbsup.fill")
    }
    
    var rules: [Rule] {
        #Rule(Self.$hasAddedToFavorites) { $0 == true }
    }

}

