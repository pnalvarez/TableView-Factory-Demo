//
//  VerticalLabelValueTableViewCell.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 20/07/21.
//

import UIKit

class VerticalLabelValueTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "VerticalLabelValueTableViewCell"
    
    private enum Constants {
        static let margin: CGFloat = 12
    }
    
    private lazy var labelStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.alignment = .center
        view.spacing = 4
        view.axis = .vertical
        return view
    }()
    
    private lazy var keyLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        view.numberOfLines = 0
        return view
    }()
    
    private lazy var valueLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont(name: "HelveticaNeue", size: 14)
        view.numberOfLines = 0
        return view
    }()
    
    func setup(key: String, value: String) {
        self.keyLabel.text = key
        self.valueLabel.text = value
        applyViewCode()
    }
}

extension VerticalLabelValueTableViewCell: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        labelStackView.addArrangedSubview(keyLabel)
        labelStackView.addArrangedSubview(valueLabel)
        addSubview(labelStackView)
    }
    
    func setupConstraints() {
        labelStackView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.left.equalToSuperview().inset(12)
            make.bottom.equalToSuperview().inset(20)
        }
        keyLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
        }
        valueLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
        }
    }
    
    func configureViews() {
        selectionStyle = .none 
        backgroundColor = .white
    }
}
