//
//  VerticalLabelValueTableViewCellBuilder.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 20/07/21.
//

import UIKit

class VerticalLabelValueTableViewCellBuilder: TableViewCellBuilder {
    
    private let height: CGFloat
    private let key: String
    private let value: String
    
    init(height: CGFloat, key: String, value: String) {
        self.height = height
        self.key = key
        self.value = value
    }
    
    func registerCell(in tableView: UITableView) {
        tableView.register(VerticalLabelValueTableViewCell.self, forCellReuseIdentifier: VerticalLabelValueTableViewCell.cellIdentifier)
    }
    
    func cellHeight() -> CGFloat {
        return height
    }
    
    func cellAt(indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: VerticalLabelValueTableViewCell.cellIdentifier, for: indexPath) as? VerticalLabelValueTableViewCell else {
            return UITableViewCell()
        }
        cell.setup(key: key, value: value)
        return cell
    }
}
