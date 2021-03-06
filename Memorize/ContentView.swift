//
//  ContentView.swift
//  Memorize
//
//  Created by Leonardo Oliveira on 11/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Posso tanto usar o content: children, quando omitir ele e passar dentro da chaves
        return HStack {
                ForEach(0..<4) { index in
                    CardView(isFaceUp: false)
                   
                }
            }
        .padding()
        .foregroundColor(Color.orange)
    }
}

struct CardView: View{
    var isFaceUp : Bool;
    var body: some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻").font(Font.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
           
          
        }
    }
}


























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
