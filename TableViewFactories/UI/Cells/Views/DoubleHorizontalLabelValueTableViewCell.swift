//
//  DoubleHorizontalLabelValueTableViewCell.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 22/07/21.
//

import UIKit

class DoubleHorizontalTitleLabelValueTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "DoubleHorizontalLabelValueTableViewCell"
    
    private lazy var firstInfoStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.distribution = .fillEqually
        view.spacing = 4
        view.alignment = .center
        view.axis = .horizontal
        return view
    }()
    
    private lazy var secondInfoStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.distribution = .fillEqually
        view.spacing = 4
        view.alignment = .center
        view.axis = .horizontal
        return view
    }()
    
    private lazy var mainStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.spacing = 4
        view.alignment = .leading
        view.axis = .horizontal
        return view
    }()
    
    private lazy var firstKeyLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        view.numberOfLines = 0
        return view
    }()
    
    private lazy var firstValueLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont(name: "HelveticaNeue", size: 14)
        view.numberOfLines = 0
        return view
    }()
    
    private lazy var secondKeyLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        view.numberOfLines = 0
        return view
    }()
    
    private lazy var secondValueLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont(name: "HelveticaNeue", size: 14)
        view.numberOfLines = 0
        return view
    }()
    
    func setup(firstKey: String, firstValue: String, secondKey: String, secondValue: String) {
        self.firstKeyLabel.text = firstKey
        self.firstValueLabel.text = firstValue
        self.secondKeyLabel.text = secondKey
        self.secondValueLabel.text = secondValue
        applyViewCode()
    }
}

extension DoubleHorizontalTitleLabelValueTableViewCell: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        firstInfoStackView.addArrangedSubview(firstKeyLabel)
        firstInfoStackView.addArrangedSubview(firstValueLabel)
        mainStackView.addArrangedSubview(firstInfoStackView)
        secondInfoStackView.addArrangedSubview(secondKeyLabel)
        secondInfoStackView.addArrangedSubview(secondValueLabel)
        mainStackView.addArrangedSubview(secondInfoStackView)
        addSubview(mainStackView)
    }
    
    func setupConstraints() {
        mainStackView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(12)
            make.right.equalToSuperview()
        }
        firstInfoStackView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.size.width / 2)
        }
        secondInfoStackView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
    func configureViews() {
        selectionStyle = .none
    }
}
