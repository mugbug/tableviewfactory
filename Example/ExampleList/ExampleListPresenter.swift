//
//  ExampleListPresenter.swift
//  Example
//
//  Created by Pedro M. Zaroni on 16/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

protocol ExampleListViewDelegate: AnyObject {
    func showExample(forType type: ExampleType, isEditable: Bool)
    func showDraggableExample()
    func showCollectionExample()
    func showFactoryExample()
    func showGridColletionExample()
}

class ExampleListPresenter {

    weak var view: ExampleListViewDelegate?

    func showExample(for type: ExampleType) {
        switch type {
        case .draggable:
            view?.showDraggableExample()
        case .collectionView:
            view?.showCollectionExample()
        case .gridColletion:
            view?.showGridColletionExample()
        default:
            view?.showExample(forType: type, isEditable: false)
        }
    }

    func showMeetupExample(for type: MeetupExampleType) {
        switch type {
        case .factory:
            view?.showFactoryExample()
        }
    }
}

extension ExampleType {
    func tableFactory() -> TableViewFactoryProtocol? {
        switch self {
        case .singleSelection:
            return SingleSelectionExampleTableViewFactory()
        case .editable:
            return EditableTableViewFactory()
        case .horizontalList:
            return AlternateStaticTableViewFactory()
        default:
            return nil
        }
    }
}
