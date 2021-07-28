//
//  ContentView.swift
//  homeWork 3.1
//
//  Created by Александра Мельникова on 27.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentLight = CurrentLight.red
    
    @State private var buttonTitle = "START"
    
    @State private var redColor: Color = .clear
    @State private var yellowColor: Color = .clear
    @State private var greenColor: Color = .clear
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                CircleView(color: redColor)
                CircleView(color: yellowColor)
                CircleView(color: greenColor)
                
                Spacer()
                
                Button(action: {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    switch currentLight {
                    case .red:
                        redColor = redLightOn
                        yellowColor = yellowLightOff
                        greenColor = greenLightOff
                        currentLight = .yellow
                    case .yellow:
                        redColor = redLightOff
                        yellowColor = yellowLightOn
                        greenColor = greenLightOff
                        currentLight = .green
                    case .green:
                        redColor = redLightOff
                        yellowColor = yellowLightOff
                        greenColor = greenLightOn
                        currentLight = .red
                    }
                }) {
                    Text("\(buttonTitle)")
                }.padding()
                .accentColor(.blue)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                
            }.padding(.top, 30).padding(.bottom, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
