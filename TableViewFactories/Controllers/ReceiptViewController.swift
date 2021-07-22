//
//  ReceiptViewController.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 21/07/21.
//

import UIKit

class ReceiptViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.backgroundColor = .white
        view.separatorStyle = .none
        view.delegate = dataSource
        view.dataSource = dataSource
        return view
    }()
    
    private lazy var mainView: ReceiptView = {
        let view = ReceiptView(frame: .zero, tableView: tableView)
        view.backgroundColor = .blue
        return view
    }()
    
    private let viewModel: ReceiptViewModel
    
    private var dataSource: TableViewDataSourceProtocol
    private var factory: FactoryProtocol?
    
    init(dataSource: TableViewDataSourceProtocol = TableViewDataSource(),
         viewModel: ReceiptViewModel) {
        self.dataSource = dataSource
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        setupTableContent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    private func setupTableContent() {
        factory = TableViewFactory(viewModel: viewModel, tableView: tableView)
        if let sections = factory?.getSections() {
            dataSource.sections = sections
        }
    }
}
