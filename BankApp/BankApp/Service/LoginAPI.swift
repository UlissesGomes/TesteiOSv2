//
//  LoginAPI.swift
//  BankApp
//
//  Created by Ulisses Gomes on 03/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
import Alamofire

class LoginAPI: UserStoreProtocol {
    
    static var url = "https://bank-app-test.herokuapp.com/api/login"
    
    func doLogin(user: String, password: String, completionHandler: @escaping (LoginResponse) -> ()) {
        Alamofire.request(LoginAPI.url, method: .post, parameters: ["user":user,"password":password], encoding: JSONEncoding.default).responseData(completionHandler: { response in
            if let value = response.result.value {
                let response = try! JSONDecoder().decode(LoginResponse.self, from: value)
                completionHandler(response)
            }
        })
    }
    
    
}
