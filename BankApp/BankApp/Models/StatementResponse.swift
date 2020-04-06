//
//  StatementResponse.swift
//  BankApp
//
//  Created by Ulisses Gomes on 04/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation


struct StatementResponse: Codable {
    
    var statementList: [Statement]
    var error: Error
    
}

struct Statement: Codable {
    
    var title: String
    var desc: String
    var date: String
    var value: Float
    
}
