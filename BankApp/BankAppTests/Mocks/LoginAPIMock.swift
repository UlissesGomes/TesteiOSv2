//
//  LoginAPIMock.swift
//  BankApp
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp

class LoginAPIMock: UserStoreProtocol {
    
    let user = "ulisses@hotmail.com"
    let password = "1234Q@"
    
    func doLogin(user: String, password: String, completionHandler: @escaping (LoginResponse) -> ()) {
        if(user == self.user && password == self.password) {
            completionHandler(LoginResponse(userAccount: User(userId: 1, name: "Ulisses Gome", bankAccount: "0000", agency: "111111", balance: 100.0), error: Error()))
        }else{
            completionHandler(LoginResponse(userAccount: User(userId: nil, name: nil, bankAccount: nil, agency: nil, balance: nil), error: Error(code: 403, message: "Usuário ou senha incorretos")))
        }
    }

    
}
