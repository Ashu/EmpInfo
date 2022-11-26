//
//  LoginViewModel.swift
//  EmpInfo
//
//  Created by Ashu on 23/11/22.
//

import RxSwift

class LoginViewModel {
    
    let email = PublishSubject<String>()
    let password = PublishSubject<String>()
        
    func isValid() -> Observable<Bool> {
        return Observable.combineLatest(email.asObservable().startWith(""), password.asObservable().startWith(""))
            .map { email, password in
                return email.count > 3 && password.count > 3
            }.startWith(false)
    }
    
    func login() {
        
    }
    
    func setUpBindings() {
//        Observable
//            .combineLatest(email, password)
////            .bind(to: isLoginActive)
//            .disposed(by: disposeBag)
    }
}
