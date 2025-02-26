//
//  CustomTipViewStyle.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 26/02/2025.
//

import SwiftUI
import TipKit

struct CustomTipViewStyle: TipViewStyle {

    var onDisappear: (() -> ())?

    func makeBody(configuration: TipViewStyle.Configuration) -> some View {
        VStack(alignment: .leading) {
            HStack {
                Text("TIP").font(.system(.headline).smallCaps())
                Spacer()
                Button(action: { configuration.tip.invalidate(reason: .tipClosed) }) {
                    Image(systemName: "xmark")
                        .scaledToFit()
                        .foregroundStyle(Color.red)
                }
            }
            
            Divider().frame(height: 1.0)
            
            HStack(alignment: .top) {
                configuration.image?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48.0, height: 48.0)
                
                
                VStack(alignment: .leading, spacing: 8.0) {
                    configuration.title?.font(.headline)
                    configuration.message?.font(.subheadline)
                    
                    
                    ForEach(configuration.actions) { action in
                        Button(action: action.handler) {
                            action.label().foregroundStyle(.red)
                        }
                    }
                }
            }
        }
        .padding(12)
        .background(Color.green)
        .onTapGesture { configuration.tip.invalidate(reason: .tipClosed) }
        .onDisappear { onDisappear?() }
    }

}
