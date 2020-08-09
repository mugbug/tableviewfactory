# TableViewFactory

🧩 Implement reusable data lists with ease in Swift/UIKit

# Features

- [x] [Static cells](#static-cells)

- [x] [Draggable cells](#draggable-cells)

- [x] [Cells with actions on slide](#cells-with-actions-on-slide)

- [x] [Single selection](#single-selection)

- [x] [Horizontal list cells](#horizontal-list-cells)

# Usage [WIP]

## Basics

**CellBuilder** — A configuration holder for each cell you want to display.

**Section** — A model that holds header and footer (if needed); and a list of cell builders to be displayed.

**TableViewFactory** — A factory of sections to be displayed.

## Static cells

### Preview:
- [ ] Add example image

### Features (* required):

- Registration*
- Dequeue (can customize)*
- Height*
- Is selectable*
- Did select (requires cell to be selectable)

```swift
struct MyStaticCellBuilder: TableViewCellBuilder {
    func registerCellIdentifier(in tableView: UITableView) {
        tableView.register(FirstStaticCell.self)
    }

    func tableViewCell(at indexPath: IndexPath, on tableView: UITableView) -> UITableViewCell {
        let cell: FirstStaticCell = tableView.dequeueReusableCell(for: indexPath)
        return cell
    }

    func tableViewShouldSelectCell(_ tableView: UITableView) -> Bool {
        false
    }

    var cellHeight: CGFloat {
        return UITableView.automaticDimension
    }
}
```

## Draggable cells

## Cells with actions on slide

## Single selection

## Horizontal list cells

# Author(s)
Although this code has influence of many developers, [me](https://github.com/mugbug) and [Emerson](https://github.com/emmendesf) were responsible for a big part of its development.