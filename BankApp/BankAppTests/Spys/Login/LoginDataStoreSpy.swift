//
//  LoginDataStoreSpy.swift
//  BankApp
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp


class LoginDataStoreSpy: LoginDataStore {
    var response: Login.UserAccount.Response? {
        return Login.UserAccount.Response(userId: 1, name: "Ulisses Gomes", agency: "0000", account: "111111", balance: 100.0)
    }
    
    
}
