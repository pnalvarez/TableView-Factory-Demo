//
//  LabelValueTableViewCell.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 20/07/21.
//

import UIKit

class HorizontalLabelValueTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "HorizontalLabelValueTableViewCell"
    
    private enum Constants {
        static let margin: CGFloat = 12
    }
    
    private lazy var labelStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.alignment = .center
        view.spacing = 20
        view.distribution = .fill
        view.axis = .horizontal
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

extension HorizontalLabelValueTableViewCell: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        labelStackView.addArrangedSubview(keyLabel)
        labelStackView.addArrangedSubview(valueLabel)
        addSubview(labelStackView)
    }
    
    func setupConstraints() {
        labelStackView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.right.equalToSuperview().inset(Constants.margin)
            make.height.equalToSuperview()
        }
        keyLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.size.width / 3)
        }
        valueLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
    func configureViews() {
        selectionStyle = .none
        backgroundColor = .white
    }
}
