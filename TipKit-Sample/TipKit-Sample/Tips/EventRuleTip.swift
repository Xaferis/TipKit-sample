//
//  EventRuleTip.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import TipKit
import SwiftUI

struct EventRuleTip: Tip {
    
    static let didOpenedProductDetail = Tips.Event(id: "didOpenedProductDetail")

    var title: Text {
        Text("Páči sa ti produkt?")
    }


    var message: Text? {
        Text("Každý produkt si môžeš uložiť do obľubených.")
    }


    var image: Image? {
        Image(systemName: "star.fill")
    }
    
    var rules: [Rule] {
        #Rule(Self.didOpenedProductDetail) {
            $0.donations.count >= 3
//            $0.donations.donatedWithin(.day).count >= 2
        }
    }

}

