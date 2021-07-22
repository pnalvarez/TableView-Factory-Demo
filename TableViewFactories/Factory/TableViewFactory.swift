//
//  TableViewFactory.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 21/07/21.
//
import UIKit

class TableViewFactory: FactoryProtocol {
    
    private let viewModel: ReceiptViewModel
    private let tableView: UITableView
    
    init(viewModel: ReceiptViewModel, tableView: UITableView) {
        self.viewModel = viewModel
        self.tableView = tableView
        
    }
    
    func getSections() -> [TableViewSectionBuilder] {
        return [
            SimpleHeaderSection(image: "",
                                title: "Dados do pagador",
                                builders: [
                                    HorizontalLabelValueTableViewCellBuilder(height: 30,
                                                                             key: "Nome",
                                                                             value: viewModel.payerName),
                                    HorizontalLabelValueTableViewCellBuilder(height: 50,
                                                                             key: "Endereço",
                                                                             value: viewModel.payerAddress),
                                    HorizontalLabelValueTableViewCellBuilder(height: 30,
                                                                             key: "Pastel",
                                                                             value: viewModel.payerPastry),
                                    HorizontalLabelValueTableViewCellBuilder(height: 30,
                                                                             key: "CPF/CNPJ:",
                                                                             value: viewModel.payerCpf),
                                ], tableView: tableView),
            SimpleHeaderSection(image: "",
                                title: "Dados da transação",
                                builders: [
                                    HorizontalLabelValueTableViewCellBuilder(height: 30,
                                                                             key: "Data",
                                                                             value: viewModel.paymentDate),
                                    HorizontalLabelValueTableViewCellBuilder(height: 30,
                                                                             key: "Valor do pagamento",
                                                                             value: viewModel.paymentValue),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Taxa",
                                                                             value: viewModel.tax),
                                    VerticalLabelValueTableViewCellBuilder(height: 90,
                                                                           key: "Descrição", value: "Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste"),
                                    WarningTableViewCellBuilder(height: 40,
                                                                message: "A transação leva 2 dias úteis para ser efetivada. Até lá, você pode salvar e compartilhar o comprovante")
                                ],
                                tableView: tableView),
            SimpleHeaderSection(image: "",
                                title: "Dados do recebedor",
                                builders: [
                                    HorizontalLabelValueTableViewCellBuilder(height: 30,
                                                                             key: "Nome", value: viewModel.receiverName),
                                    HorizontalLabelValueTableViewCellBuilder(height: 30,
                                                                             key: "CPF/CNPJ", value: viewModel.receiverCpf),
                                    HorizontalLabelValueTableViewCellBuilder(height: 30,
                                                                             key: "Endereço", value: viewModel.receiverAddress),
                                ],
                                tableView: tableView)
        ]
    }
}
