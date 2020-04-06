//
//  StatementModels.swift
//  BankApp
//
//  Created by Ulisses Gomes on 03/04/20.
//  Copyright (c) 2020 Ulisses Gomes. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Statements {
    // MARK: Use cases
    
    struct UserData {
        var userId: Int
        var name: String
        var agency: String
        var account: String
        var balance: Float
    }
    
    enum StatementList {
        
        struct Request {
            var userId: Int
        }
        
        struct Response: Decodable {
            var title: String
            var desc: String
            var date: String
            var value: String
        }
        
        struct ViewModel {
            var statements: [StatementList.Response]
        }
        
    }
}