//
//  LoginInteractorTest.swift
//  BankApp
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import XCTest
@testable import BankApp

class LoginInteractorTest: XCTestCase {
    
    let interactor = LoginInteractor()
    let spy = LoginPresenterSpy()

    override func setUp() {
        interactor.userWorker = UserAccountWorker(store: LoginAPIMock(), localStore: UserStoreMock())
        interactor.presenter = spy
    }

    func testLoginUserNoExists() {
        interactor.doLogin(request: Login.UserAccount.Request(user: "ulissses@hotmail.com", password: "123AQ!"))
        XCTAssert(spy.loginError != nil && spy.loginError?.message == "Usuário ou senha incorretos")
    }
    
    func testLoginPasswordWrong() {
        interactor.doLogin(request: Login.UserAccount.Request(user: "ulisses@hotmail.com", password: "12345677"))
        XCTAssert(spy.loginError != nil && spy.loginError?.message == "Usuário ou senha incorretos")
    }
    
    func testLoginWithoutRegexPattern(){
        interactor.doLogin(request: Login.UserAccount.Request(user: "ulisses", password: "1234Q@"))
        XCTAssert(spy.loginError != nil && spy.loginError?.message == "Usuário ou senha incorretos")
    }

}
