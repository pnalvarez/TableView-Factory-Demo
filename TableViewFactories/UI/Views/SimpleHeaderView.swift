//
//  SimpleHeaderView.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 21/07/21.
//

import UIKit

class SimpleHeaderView: UIView {
    
    private enum Constants {
        static let horizontalMargin: CGFloat = 12
        static let space: CGFloat = 4
        static let verticalMargin: CGFloat = 2
        static let imageWidth: CGFloat = 16
        static let imageHeight: CGFloat = 16
    }
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var mainLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
        view.textColor = .gray
        return view
    }()
    
    private var image: String?
    private var title: String?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.layer.cornerRadius = imageView.frame.width / 2
    }
    
    func setup(image: String, title: String) {
        self.image = image
        self.title = title
        applyViewCode()
    }
}

extension SimpleHeaderView: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        addSubview(imageView)
        addSubview(mainLabel)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(30)
        }
        mainLabel.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp.right).offset(10)
            make.right.equalToSuperview()
            make.centerY.equalTo(imageView)
        }
    }
    
    func configureViews() {
        imageView.image = UIImage(named: image ?? "")
        mainLabel.text = title
        backgroundColor = .white
    }
}
