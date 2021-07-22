//
//  DoubleHorizontalLabelValueTableViewCellBuilder.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 22/07/21.
//

import UIKit

class DoubleHorizontalLabelValueTableViewCellBuilder: TableViewCellBuilder {
    
    private let height: CGFloat
    private let firstKey: String
    private let firstValue: String
    private let secondKey: String
    private let secondValue: String
    
    init(height: CGFloat, firstKey: String, firstValue: String, secondKey: String, secondValue: String) {
        self.height = height
        self.firstKey = firstKey
        self.firstValue = firstValue
        self.secondKey = secondKey
        self.secondValue = secondValue
    }
    
    func registerCell(in tableView: UITableView) {
        tableView.register(DoubleHorizontalTitleLabelValueTableViewCell.self, forCellReuseIdentifier: DoubleHorizontalTitleLabelValueTableViewCell.cellIdentifier)
    }
    
    func cellHeight() -> CGFloat {
        return height
    }
    
    func cellAt(indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DoubleHorizontalTitleLabelValueTableViewCell.cellIdentifier, for: indexPath) as? DoubleHorizontalTitleLabelValueTableViewCell else {
            return UITableViewCell()
        }
        cell.setup(firstKey: firstKey, firstValue: firstValue, secondKey: secondKey, secondValue: secondValue)
        return cell
    }
}
