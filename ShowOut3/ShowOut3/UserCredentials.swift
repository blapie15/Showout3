//
//  UserCredentials.swift
//  ShowOut3
//
//  Created by Barry LaPierre on 8/10/16.
//  Copyright © 2016 Project12. All rights reserved.
//

class UserCredentials {
    
    fileprivate var username: String
    fileprivate var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func printInformation() {
        print("username: \(username)")
        print("password: \(password)")
    }
    
}
