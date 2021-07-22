//
//  ReceiptView.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 21/07/21.
//

import UIKit
import SnapKit

class ReceiptView: UIView {
    
    private unowned var tableView: UITableView
    
    init(frame: CGRect,
         tableView: UITableView) {
        self.tableView = tableView
        super.init(frame: frame)
        applyViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ReceiptView: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        addSubview(tableView)
    }
    
    func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func configureViews() {
        backgroundColor = .blue
    }
}
