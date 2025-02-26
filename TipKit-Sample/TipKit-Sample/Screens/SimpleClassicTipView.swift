//
//  SimpleClassicTipView.swift
//  TipKit-Sample
//
//  Created by Matúš Mištrik on 25/02/2025.
//

import SwiftUI
import TipKit

struct SimpleClassicTipView: View {
    
    static let name = "SimpleClassicTipView"
    
    var tip = SimpleTip()

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "headphones")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding()
            
            // TipView
            TipView(tip)
            
            Text("Bezdrôtové slúchadlá")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Vysokokvalitné bezdrôtové slúchadlá s potlačením hluku.")
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text("\(String(format: "%.2f", 129.99)) €")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.green)
            
            Button(action: {
                print("Produkt pridaný do košíka")
            }) {
                Text("Pridať do košíka")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding()
        .toolbar {
            Button {} label: {
                Image(systemName: "star")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 24)
                    .padding()
            }
        }
    }

}

#Preview {
    SimpleClassicTipView()
}
