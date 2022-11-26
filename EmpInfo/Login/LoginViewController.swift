//
//  LoginViewController.swift
//  EmpInfo
//
//  Created by Ashu on 23/11/22.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: UIViewController {

    private var loginViewModel = LoginViewModel()
    private var disposeBag = DisposeBag()
    weak var coordinator: LoginCoordinator?
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.rx.text.map { $0 ?? "" }.bind(to: loginViewModel.email).disposed(by: disposeBag)
        passwordTextField.rx.text.map { $0 ?? "" }.bind(to: loginViewModel.password).disposed(by: disposeBag)
        
        loginViewModel.isValid().bind(to: loginButton.rx.isEnabled).disposed(by: disposeBag)
        loginViewModel.isValid().map { $0 ? 1 : 0.2 }.bind(to: loginButton.rx.alpha).disposed(by: disposeBag)
        
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        
    }
}
