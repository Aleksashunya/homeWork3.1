//
//  CircleView.swift
//  homeWork 3.1
//
//  Created by Александра Мельникова on 27.07.2021.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
            .shadow(radius: 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .pink, opacity: 1)
    }
}
