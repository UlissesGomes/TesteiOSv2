//
//  StatementsPresenterSpy.swift
//  BankAppTests
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp


class StatementPresenterSpy: StatementPresentationLogic {
    
    var statements: Statements.StatementList.ViewModel?
    
    func presentStatement(response: Statements.StatementList.ViewModel) {
        statements = response
    }
    
}
