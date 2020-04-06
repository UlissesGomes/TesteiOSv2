//
//  UserAccountWorker.swift
//  BankApp
//
//  Created by Ulisses Gomes on 03/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation

protocol UserStoreProtocol {
    func doLogin(user: String, password: String, completionHandler: @escaping (LoginResponse) -> ())
}

protocol LocalUserStoreProtocol {
    func fetchUser() -> String?
    func saveUser(user: String)
}

class UserAccountWorker {
    
    var userStore: UserStoreProtocol
    var localUserStore: LocalUserStoreProtocol
    
    init(store: UserStoreProtocol, localStore: LocalUserStoreProtocol) {
        self.userStore = store
        self.localUserStore = localStore
    }
    
    func doLogin(user: String, password: String, completion: @escaping (LoginResponse) -> ()) {
        userStore.doLogin(user: user, password: password, completionHandler: completion)
    }
    
    func getUser() -> String? {
        return localUserStore.fetchUser()
    }
    
    func storeUsername(user: String) {
        localUserStore.saveUser(user: user)
    }
    
}
