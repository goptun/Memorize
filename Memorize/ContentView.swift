//
//  ContentView.swift
//  Memorize
//
//  Created by Matheus Ramos on 12/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceup: false)
            CardView()
            CardView(isFaceup: true)
            CardView(isFaceup: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceup = false
    
    var body: some View {
        ZStack {
            var base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceup {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceup.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
