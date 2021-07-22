//
//  BaseSection.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 20/07/21.
//

import UIKit

class BaseSection: TableViewSectionBuilder {
    
    var builders: [TableViewCellBuilder]
    
    init(builders: [TableViewCellBuilder], tableView: UITableView) {
        self.builders = builders
        for builder in builders {
            builder.registerCell(in: tableView)
        }
    }
    
    func viewForHeader() -> UIView? {
        return nil
    }
    
    func heightForHeader() -> CGFloat {
        return 0
    }
    
    func viewForFooter() -> UIView? {
        return nil
    }
    
    func heightForFooter() -> CGFloat {
        return 0
    }
}
