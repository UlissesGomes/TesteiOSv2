//
//  UserStore.swift
//  BankApp
//
//  Created by Ulisses Gomes on 03/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation

class UserStore: LocalUserStoreProtocol {
    
    private let userKey = "userKey"
    
    func fetchUser() -> String? {
        let preferences = UserDefaults.standard
        if preferences.string(forKey: userKey) != nil{
            let user = preferences.string(forKey: userKey)
            return user!
        } else {
            return nil
        }
    }
    
    func saveUser(user: String) {
        let preferences = UserDefaults.standard
        print("saveUSer : \(user)")
        preferences.set(user, forKey: userKey)
    }
}
