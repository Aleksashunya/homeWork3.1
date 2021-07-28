//
//  Constants.swift
//  homeWork 3.1
//
//  Created by Александра Мельникова on 28.07.2021.
//

import SwiftUI

let greenLightOn = Color(red: 0, green: 1, blue: 0, opacity: 1)
let greenLightOff = Color(red: 0, green: 1, blue: 0, opacity: 0.3)

let redLightOn = Color(red: 1, green: 0, blue: 0, opacity: 1)
let redLightOff = Color(red: 1, green: 0, blue: 0, opacity: 0.3)

let yellowLightOn = Color(red: 1, green: 1, blue: 0, opacity: 1)
let yellowLightOff = Color(red: 1, green: 1, blue: 0, opacity: 0.3)

enum CurrentLight {
    case red, yellow, green
}
