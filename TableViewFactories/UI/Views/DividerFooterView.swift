//
//  DividerFooterView.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 22/07/21.
//

import UIKit

class DividerFooterView: UIView {
    
    private lazy var divider: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .black
        view.layer.cornerRadius = 4
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DividerFooterView: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        addSubview(divider)
    }
    
    func setupConstraints() {
        divider.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.right.equalToSuperview().inset(12)
            make.height.equalTo(2)
        }
    }
}
