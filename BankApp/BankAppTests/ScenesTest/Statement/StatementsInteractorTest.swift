//
//  StatementsInteractorTest.swift
//  BankAppTests
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import XCTest
@testable import BankApp

class StatementsInteractorTest: XCTestCase {
    
    let interactor = StatementInteractor()
    let spy = StatementPresenterSpy()
    
    override func setUp() {

        interactor.worker = StatementWorker(store: StatementAPIMock())
        interactor.presenter = spy
    
    }
    
    func testSucessGetStatements() {
        interactor.getStatements(request: Statements.StatementList.Request(userId: 1))
        
        XCTAssert(spy.statements == nil)
    }
    
    func testErrorGetStatements() {
        interactor.getStatements(request: Statements.StatementList.Request(userId: 2))
        
        XCTAssert(spy.statements == nil)
    }

}
