//
//  CombinedRuleTip.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import TipKit
import SwiftUI

struct CombinedRuleTip: Tip {
    
    @Parameter
    static var hasAddedToFavorites: Bool = false

    static let didOpenedProductDetail = Tips.Event(id: "didOpenedProductDetail")


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
        #Rule(Self.didOpenedProductDetail) {
            $0.donations.count >= 2
        }
    }

}

