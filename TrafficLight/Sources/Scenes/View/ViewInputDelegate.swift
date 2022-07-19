//
//  ViewInputDelegate.swift
//  TrafficLight
//
//  Created by Kirill on 19.07.2022.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupData(with cells: [TypeCell], with titleButton: TypeButton)
    func displayData(index: Int, title: String)
    func setupParametersForCells(_ cells: TypeCell)
}
