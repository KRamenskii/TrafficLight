//
//  Presenter.swift
//  TrafficLight
//
//  Created by Kirill on 19.07.2022.
//

import Foundation

final class Presenter {
    
    // MARK: - Properties
    
    weak private var viewInputDelegate: ViewInputDelegate?
    var cells = TypeCell.cells
    var titles = TypeButton.buttons
    
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate?) {
        self.viewInputDelegate = viewInputDelegate
    }
    
    func loadData() {
        viewInputDelegate?.setupData(with: self.cells, with: self.titles)
        viewInputDelegate?.displayData(index: 0, title: titles.title)
    }
    
    func actionsButton() -> TypeButton {
        return titles
    }
    
    func setActiveParametersForCells() {
        viewInputDelegate?.setupParametersForCells(self.cells[1])
    }
    
    func setPassiveParametersForCells() {
        viewInputDelegate?.setupParametersForCells(self.cells[0])
    }
}

// MARK: - ViewOutputDelegate

extension Presenter: ViewOutputDelegate {
    
    // MARK: - Functions for changing the traffic light mode
    
    func setActiveParameters() {
        setActiveParametersForCells()
    }
    
    func setPassiveParameters() {
        setPassiveParametersForCells()
    }
    
    // MARK: - Functions for changing the buttons mode
    
    func startModel() -> TypeButton {
        var button = actionsButton()
        button.title = ButtonTitles.passive
        button.modelIsActive = true
        return button
    }
    
    func stopModel() -> TypeButton {
        var button = actionsButton()
        button.title = ButtonTitles.active
        button.modelIsActive = false
        return button
    }
    
    // MARK: - Set initial parameters
    
    func getData() {
        loadData()
    }
}
