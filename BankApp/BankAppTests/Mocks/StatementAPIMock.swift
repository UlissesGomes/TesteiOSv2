//
//  StatementAPIMock.swift
//  BankApp
//
//  Created by Ulisses Gomes on 06/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
@testable import BankApp


class StatementAPIMock: StatementStoreProtocol {
    
    
    func fetchStatements(_ userId: Int, completionHandler: @escaping (StatementResponse) -> ()) {
        completionHandler(getResponse(userId: userId))
    }
    
    private func getResponse(userId: Int) -> StatementResponse{
        
        if userId == 1 {
            return StatementResponse(statementList: [
                Statement(title: "Um", desc: "Teste1", date: "01/01/2001", value: 1.0),
                Statement(title: "Dois", desc: "Teste2", date: "01/01/2002", value: 2.0),
                Statement(title: "Tres", desc: "Teste3", date: "01/01/2003", value: 3.0),
                Statement(title: "Quatro", desc: "Teste4", date: "01/01/2004", value: 4.0),
                Statement(title: "Cinco", desc: "Teste5", date: "01/01/2005", value: 5.0),
                Statement(title: "Seis", desc: "Teste6", date: "01/01/2006", value: 6.0),
            ], error: Error(code: nil, message: nil))
        } else {
            return StatementResponse(statementList: [],  error: Error(code: 500, message: "Server error"))
        }
        
        
        
    }
    
    
}
