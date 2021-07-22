//
//  SimpleHeaderSection.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 21/07/21.
//

import UIKit

class SimpleHeaderSection: BaseSection {
    
    private let image: String
    private let title: String
    
    init(image: String, title: String, builders: [TableViewCellBuilder], tableView: UITableView) {
        self.image = image
        self.title = title
        super.init(builders: builders, tableView: tableView)
    }
    
    override func viewForHeader() -> UIView? {
        let view = SimpleHeaderView(frame: .zero)
        view.setup(image: image, title: title)
        return view
    }
    
    override func heightForHeader() -> CGFloat {
        return 80
    }
    
    override func viewForFooter() -> UIView? {
        return DividerFooterView(frame: .zero)
    }
    
    override func heightForFooter() -> CGFloat {
        return 20
    }
}
