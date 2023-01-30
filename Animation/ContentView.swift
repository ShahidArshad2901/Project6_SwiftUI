//
//  ContentView.swift
//  Animation
//
//  Created by Dev on 30/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me") {
            //d0 Noth...
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount-1)*3)
        .animation(.easeInOut(duration: 0.4).repeatForever(autoreverses: true), value: animationAmount)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
