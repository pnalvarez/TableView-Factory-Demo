//
//  SceneDelegate.swift
//  TableViewFactories
//
//  Created by Pedro Alvarez on 20/07/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let viewController = ReceiptViewController(dataSource: TableViewDataSource(), viewModel: ReceiptViewModel(payerName: "Giovana Gobbi", payerCpf: "122.917.081-88", payerAddress: "Rua dos Jasmins, 91, Praça da Árvore", payerPastry: "Carne", payerAgency: "0120", payerAccount: "1234-5", paymentValue: "R$ 100,00", productName: "Produto", receiverName: "Pedro Alvarez", receiverCpf: "127.817.067-79", receiverAddress: "Avenida Macuco 382, Indianápolis", receiverPastry: "Frango com Catupiry", receiverAgency: "0121", receiverAccount: "1234-5", tax: "R$20,00", paymentDate: "21/07/2021", paymentType: "TED", cashback: "R$ 10,00"))
            viewController.view.backgroundColor = .white
            window.rootViewController = viewController
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

