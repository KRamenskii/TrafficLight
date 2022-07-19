//
//  ViewOutputDelegate.swift
//  TrafficLight
//
//  Created by Kirill on 19.07.2022.
//

import Foundation

protocol ViewOutputDelegate: AnyObject {
    func getData()
    func startModel() -> TypeButton
    func stopModel() -> TypeButton
    func setActiveParameters()
    func setPassiveParameters()
}
