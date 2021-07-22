//
//  ViewCodeProtocol.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 20/07/21.
//

protocol ViewCodeProtocol {
    func buildViewHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodeProtocol {
    
    func configureViews() {
        
    }
    
    func applyViewCode() {
        buildViewHierarchy()
        setupConstraints()
        configureViews()
    }
}
