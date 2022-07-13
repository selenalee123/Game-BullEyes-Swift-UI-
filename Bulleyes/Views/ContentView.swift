//
//  ContentView.swift
//  Bulleyes
//
//  Created by kim ly on 2022-06-28.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool =
    false
    @State private var sliderValue: Double =
    50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack{
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .font(.footnote)
                .lineSpacing(4.0)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in:1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action:{
                print("Hello Swift UI")
                alertIsVisible = true
            }) {
            Text("Hit me la")
            }
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") { }
            } message: {
                let roundedValue = Int(sliderValue.rounded())
                Text("The slider's value is \(roundedValue).\n" +
              "You scored \(game.points(sliderValue: roundedValue)) points this round.")
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
