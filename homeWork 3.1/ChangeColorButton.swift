//
//  ChangeColorButton.swift
//  homeWork 3.1
//
//  Created by Александра Мельникова on 30.07.2021.
//

import SwiftUI

struct ChangeColorButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("\(title)")
        }
        .frame(width: 200, height: 50)
        .accentColor(.white)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {} )
    }
}
