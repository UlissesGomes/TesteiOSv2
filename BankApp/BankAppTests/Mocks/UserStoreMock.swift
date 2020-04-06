//
//  UserStoreMock.swift
//  BankAppTests
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp

class UserStoreMock: LocalUserStoreProtocol {
    
    var user: String? = ""
    
    func fetchUser() -> String? {
        return user
    }
    
    func saveUser(user: String) {
        self.user = user
    }

    
}
