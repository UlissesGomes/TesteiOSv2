//
//  StatementsDisplayLogicSpy.swift
//  BankAppTests
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp

class StatementDisplayLogicSpy: StatementDisplayLogic {
    
    var statements: Statements.StatementList.ViewModel?
    
    func displayStatements(viewModel: Statements.StatementList.ViewModel) {
        statements = viewModel
    }
}
