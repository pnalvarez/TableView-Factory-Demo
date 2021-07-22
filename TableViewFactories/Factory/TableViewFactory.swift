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
            SimpleHeaderSection(image: "profile",
                                title: "Dados do pagador",
                                builders: [
                                    DoubleHorizontalLabelValueTableViewCellBuilder(height: 40, firstKey: "Agência", firstValue: viewModel.payerAgency, secondKey: "Conta", secondValue: viewModel.payerAccount),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Nome",
                                                                             value: viewModel.payerName),
                                    HorizontalLabelValueTableViewCellBuilder(height: 50,
                                                                             key: "Endereço",
                                                                             value: viewModel.payerAddress),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Pastel",
                                                                             value: viewModel.payerPastry),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "CPF/CNPJ:",
                                                                             value: viewModel.payerCpf),
                                ], tableView: tableView),
            SimpleHeaderSection(image: "carteira-1",
                                title: "Dados da transação",
                                builders: [
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Data",
                                                                             value: viewModel.paymentDate),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Valor do pagamento",
                                                                             value: viewModel.paymentValue),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Taxa",
                                                                             value: viewModel.tax),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Tipo de pagamento", value: viewModel.paymentType),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Cashback", value: viewModel.cashback),
                                    VerticalLabelValueTableViewCellBuilder(height: 90,
                                                                           key: "Descrição", value: "Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste"),
                                    WarningTableViewCellBuilder(height: 40,
                                                                message: "A transação leva 2 dias úteis para ser efetivada. Até lá, você pode salvar e compartilhar o comprovante")
                                ],
                                tableView: tableView),
            SimpleHeaderSection(image: "cifrao",
                                title: "Dados do recebedor",
                                builders: [
                                    DoubleHorizontalLabelValueTableViewCellBuilder(height: 40, firstKey: "Agência", firstValue: viewModel.payerAgency, secondKey: "Conta", secondValue: viewModel.payerAccount),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Nome", value: viewModel.receiverName),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "CPF/CNPJ", value: viewModel.receiverCpf),
                                    HorizontalLabelValueTableViewCellBuilder(height: 40,
                                                                             key: "Endereço", value: viewModel.receiverAddress),
                                ],
                                tableView: tableView)
        ]
    }
}
