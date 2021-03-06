//
//  GenericExamplePresenter.swift
//  Example
//
//  Created by Pedro M. Zaroni on 17/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import BricksAndTiles

protocol TableViewFactoryProtocol {
    func make() -> [TableViewSection]
}

class GenericExamplePresenter: GenericPresenterProtocol {
    var exampleName: String { type.title }
    var dataSource: TableViewDataSource?
    private lazy var factory: TableViewFactoryProtocol = type.tableFactory()!
    private let type: ExampleType

    init(type: ExampleType) {
        self.type = type
    }

    func setupDataSource(in tableView: UITableView) {
        dataSource = TableViewDataSource(
            sections: factory.make(),
            tableView: tableView
        )
    }
}
