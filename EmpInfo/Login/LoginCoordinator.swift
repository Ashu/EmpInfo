//
//  LoginCoordinator.swift
//  EmpInfo
//
//  Created by Ashu on 23/11/22.
//

import UIKit

class LoginCoordinator: Coordinator {
    
    weak var parentCoordinator: AppCoordinator?
    weak var childNavigationController: UINavigationController?
    
//    init(navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
    
    func start() {
        let vc = LoginViewController()
        vc.coordinator = self
        navigationController!.pushViewController(vc, animated: true)
    }
    
}
