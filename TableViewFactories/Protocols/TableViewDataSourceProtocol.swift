//
//  TableViewDataSourceProtocol.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 22/07/21.
//

import UIKit

protocol TableViewDataSourceProtocol: UITableViewDelegate, UITableViewDataSource {
    var sections: [TableViewSectionBuilder] { get set }
}
