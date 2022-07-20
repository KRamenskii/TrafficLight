//
//  Model.swift
//  TrafficLight
//
//  Created by Kirill on 19.07.2022.
//

import Foundation

struct TypeCell {
    var icon: String
    var time: Int
    var color: String
}

struct TypeButton {
    var title: String
    var modelIsActive: Bool
}

extension TypeCell {
    static var cells = [
        TypeCell(icon: Icon.passive, time: Time.passive, color: Color.passive),
        TypeCell(icon: Icon.active, time: Time.active, color: Color.active)
    ]
}

extension TypeButton {
    static var buttons = TypeButton(title: ButtonTitles.active, modelIsActive: false)
}
