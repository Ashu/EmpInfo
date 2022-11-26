//
//  AppCoordinator.swift
//  EmpInfo
//
//  Created by Ashu on 23/11/22.
//

import UIKit

class Coordinator: NSObject {
    var childCoordinators: [Coordinator] = []
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
}

class AppCoordinator: Coordinator, UINavigationControllerDelegate {
    
    func start() {
        self.setupCoordinator()
    }
    
    func setupCoordinator() {
        let loginCoordinator = LoginCoordinator(navigationController: self.navigationController)
//        loginCoordinator.delegate = self
        self.childCoordinators.append(loginCoordinator)
        loginCoordinator.start()
    }
}



