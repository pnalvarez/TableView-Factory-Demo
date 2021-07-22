//
//  WarningTableViewCell.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 22/07/21.
//

import UIKit

class WarningTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "WarningTableViewCell"
    
    private lazy var warningLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = .red
        view.textAlignment = .center
        view.font = UIFont(name: "HelveticaNeue", size: 12)
        view.numberOfLines = 0
        return view
    }()
    
    func setup(message: String) {
        self.warningLabel.text = message
        applyViewCode()
    }
}

extension WarningTableViewCell: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        addSubview(warningLabel)
    }
    
    func setupConstraints() {
        warningLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview().inset(12)
        }
    }
}
