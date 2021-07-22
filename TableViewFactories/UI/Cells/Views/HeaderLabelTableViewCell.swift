//
//  HeaderLabelTableViewCell.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 21/07/21.
//

import UIKit

class HeaderLabelTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "HeaderLabelTableViewCell"
    
    private enum Constants {
        static let margin: CGFloat = 12
    }
    
    private lazy var mainLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.numberOfLines = 0
        view.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        return view
    }()
    
    private var title: String?
    
    func setup(title: String) {
        self.title = title
        applyViewCode()
    }
}

extension HeaderLabelTableViewCell: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        addSubview(mainLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            mainLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constants.margin),
            mainLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constants.margin),
            mainLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func configureViews() {
        selectionStyle = .none
        mainLabel.text = title
        backgroundColor = .white
    }
}
