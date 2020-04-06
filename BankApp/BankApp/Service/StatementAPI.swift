//
//  StatementAPI.swift
//  BankApp
//
//  Created by Ulisses Gomes on 03/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
import Alamofire

class StatementAPI: StatementStoreProtocol {
    
    let url = "https://bank-app-test.herokuapp.com/api/statements"
    
    func fetchStatements(_ userId: Int, completionHandler: @escaping (StatementResponse) -> ()) {
        Alamofire
            .request("\(url)/\(userId)", method: .get, encoding: JSONEncoding.default)
            .responseData(completionHandler: { response in
                if let value = response.result.value {
                    let response = try! JSONDecoder().decode(StatementResponse.self, from: value)
                    completionHandler(response)
                }
        })
    }
    
    
}
