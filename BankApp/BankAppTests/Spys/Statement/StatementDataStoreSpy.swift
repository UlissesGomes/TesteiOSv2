//
//  StatementsDataStoreSpy.swift
//  BankAppTests
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp


class StatementsDataStoreSpy: StatementDataStore {
    
    var userAccount: Statements.UserData? {
        get {
            return Statements.UserData(userId: 1, name: "Ulisses", agency: "0000", account: "1234567", balance: 100.00)
        }
        set{}
    }
    
    
    
}
