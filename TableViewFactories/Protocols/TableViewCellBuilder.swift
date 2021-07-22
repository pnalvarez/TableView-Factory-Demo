//
//  TableViewCellBuilder.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 20/07/21.
//

import UIKit

protocol TableViewCellBuilder {
    func registerCell(in tableView: UITableView)
    func cellHeight() -> CGFloat
    func cellAt(indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell
}
