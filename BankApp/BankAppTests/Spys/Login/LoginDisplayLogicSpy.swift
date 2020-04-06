//
//  LoginDisplayLogicSpy.swift
//  BankApp
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp


class LoginDisplayLogicSpy: LoginDisplayLogic {
    
    var loginError: Login.UserAccount.Error?
    var loginSucess: Login.UserAccount.ViewModel?
    
    func loginError(error: Login.UserAccount.Error) {
        loginError = error
    }
    
    func loginSucess(user: Login.UserAccount.ViewModel) {
        loginSucess = user
    }
    
}
