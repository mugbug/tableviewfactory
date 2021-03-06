//
//  ExampleType.swift
//  Example
//
//  Created by Pedro M. Zaroni on 16/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

enum ExampleType: String, CaseIterable {
    case draggable = "Draggable"
    case editable = "Slide for Actions"
    case singleSelection = "Single selection"
    case horizontalList = "Horizontal List"
    case collectionView = "Static Collection"
    case gridColletion = "Grid Collection"

    var title: String {
        switch self {
        case .draggable:
            return "My Song Ranking"
        case .editable:
            return "Available Songs"
        case .singleSelection:
            return "Song of the Day"
        case .horizontalList:
            return "Songfy"
        case .collectionView, .gridColletion:
            return "Available albums"
        }
    }
}
