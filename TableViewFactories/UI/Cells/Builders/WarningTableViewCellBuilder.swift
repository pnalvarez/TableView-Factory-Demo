//
//  WarningTableViewCellBuilder.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 22/07/21.
//

import UIKit

class WarningTableViewCellBuilder: TableViewCellBuilder {
    
    private let height: CGFloat
    private let message: String
    
    init(height: CGFloat, message: String) {
        self.height = height
        self.message = message
    }
    
    func registerCell(in tableView: UITableView) {
        tableView.register(WarningTableViewCell.self, forCellReuseIdentifier: WarningTableViewCell.cellIdentifier)
    }
    
    func cellHeight() -> CGFloat {
        return height
    }
    
    func cellAt(indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WarningTableViewCell.cellIdentifier, for: indexPath) as? WarningTableViewCell else {
            return UITableViewCell()
        }
        cell.setup(message: message)
        return cell
    }
}
