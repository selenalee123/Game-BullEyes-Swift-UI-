//
//  ContentView.swift
//  Bulleyes
//
//  Created by kim ly on 2022-06-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(70), in:1.0...100.0)
                Text("100")
            }
            Button("Hit me") {
                Text("Hit me")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
        ContentView()            .previewLayout(.fixed(width: 568, height: 320))
        
    }
}
