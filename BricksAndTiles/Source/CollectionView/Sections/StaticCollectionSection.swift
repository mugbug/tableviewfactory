//
//  StaticCollectionSection.swift
//  BricksAndTiles
//
//  Created by Pedro M. Zaroni on 30/07/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

public final class StaticCollectionSection: CollectionViewSection {

    public var spacingBetweenItems: ItemSpacing
    public var sectionInsets: UIEdgeInsets

    private var cellBuilders: [CollectionViewCellBuilder]

    public init(cellBuilders: [CollectionViewCellBuilder],
                spacingBetweenItems: ItemSpacing,
                sectionInsets: UIEdgeInsets) {
        self.cellBuilders = cellBuilders
        self.spacingBetweenItems = spacingBetweenItems
        self.sectionInsets = sectionInsets
    }

    public var numberOfItems: Int {
        return cellBuilders.count
    }

    private func row(at indexPath: IndexPath) -> CollectionViewCellBuilder {
        return cellBuilders[indexPath.row]
    }

    public func registerCells(in collectionView: UICollectionView) {
        for builder in cellBuilders {
            builder.registerCellIdentifier(in: collectionView)
        }
    }

    public func collectionViewCell(at indexPath: IndexPath,
                                   on collectionView: UICollectionView) -> UICollectionViewCell {
        return self.row(at: indexPath).collectionViewCell(at: indexPath, on: collectionView)
    }

    public func viewForSupplementaryElement(kind: String,
                                            at indexPath: IndexPath,
                                            on collectionView: UICollectionView) -> UICollectionReusableView {
        let row = self.row(at: indexPath)
        return row.collectionViewSupplementaryView(
            kind: kind,
            at: indexPath,
            on: collectionView
        )
    }

    public func sizeForItem(at indexPath: IndexPath,
                            on collectionView: UICollectionView,
                            layout: UICollectionViewLayout) -> CGSize {
        return self.row(at: indexPath).cellSize(collectionSize: collectionView.bounds.size)
    }

    public func didSelectItem(at indexPath: IndexPath, on collectionView: UICollectionView) {
        self.row(at: indexPath).collectionViewDidSelectCell(collectionView, at: indexPath)
    }
}
