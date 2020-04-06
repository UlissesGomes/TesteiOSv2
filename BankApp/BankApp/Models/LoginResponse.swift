//
//  LoginResponse.swift
//  BankApp
//
//  Created by Ulisses Gomes on 04/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation


struct LoginResponse: Codable {
    
    var userAccount: User
    var error: Error
    
}

struct User: Codable {
    
    var userId: Int?
    var name: String?
    var bankAccount: String?
    var agency: String?
    var balance: Float?
    
}

struct Error: Codable {
    
    var code: Int?
    var message: String?
    
}
