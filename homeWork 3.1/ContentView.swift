//
//  ContentView.swift
//  homeWork 3.1
//
//  Created by Александра Мельникова on 27.07.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    
    @State private var buttonTitle = "START"
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    private let lightOn = 1.0
    private let lightOff = 0.3
    
    func changeColor() {
        switch currentLight {
        case .red:
            redOpacity = lightOn
            yellowOpacity = lightOff
            greenOpacity = lightOff
            currentLight = .yellow
        case .yellow:
            redOpacity = lightOff
            yellowOpacity = lightOn
            greenOpacity = lightOff
            currentLight = .green
        case .green:
            redOpacity = lightOff
            yellowOpacity = lightOff
            greenOpacity = lightOn
            currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                CircleView(color: .red, opacity: redOpacity)
                CircleView(color: .yellow, opacity: yellowOpacity)
                CircleView(color: .green, opacity: greenOpacity)
                
                Spacer()
                
                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeColor()
                }
                
            }.padding(.top, 30).padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
