//
//  SimpleTipB.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import TipKit
import SwiftUI

struct SimpleTipB: Tip {

    var title: Text {
        Text("Malý obrázok?")
    }


    var message: Text? {
        Text("Klepni na obrázok a zobrazí sa ti na celú obrazovku.")
    }


    var image: Image? {
        Image(systemName: "photo.fill")
    }
    
    var actions: [Action] {
        [
            Tip.Action(id: "ok_button", perform: {}) {
                Text("Ok")
            }
        ]
    }

}

