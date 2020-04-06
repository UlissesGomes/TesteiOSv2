//
//  LoginPresenterSpy.swift
//  BankApp
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp

class LoginPresenterSpy: LoginPresentationLogic {
    
    var loginSucess: Login.UserAccount.Response?
    var loginError: Login.UserAccount.Error?
    
    func loginSucess(response: Login.UserAccount.Response) {
        self.loginSucess = response
    }
    
    func loginError(error: Login.UserAccount.Error) {
        self.loginError = error
    }
    
}
