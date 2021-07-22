//
//  HeaderLabelTableViewCellBuilder.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 21/07/21.
//

import UIKit

class HeaderLabelTableViewCellBuilder: TableViewCellBuilder {
    
    private let height: CGFloat
    private let title: String
    
    init(height: CGFloat, title: String) {
        self.height = height
        self.title = title
    }
    
    func registerCell(in tableView: UITableView) {
        tableView.register(HeaderLabelTableViewCell.self, forCellReuseIdentifier: HeaderLabelTableViewCell.cellIdentifier)
    }
    
    func cellHeight() -> CGFloat {
        return height
    }
    
    func cellAt(indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HeaderLabelTableViewCell.cellIdentifier, for: indexPath) as? HeaderLabelTableViewCell else {
            return UITableViewCell()
        }
        cell.setup(title: title)
        return cell
    }
}
