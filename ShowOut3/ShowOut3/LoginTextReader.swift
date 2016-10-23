//
//  LoginTextReader.swift
//  ShowOut3
//
//  Created by Barry LaPierre on 10/23/16.
//  Copyright © 2016 Project12. All rights reserved.
//

import Foundation

class LoginController {

    func readDataFromFile(file:String)-> String!{
        guard let filepath = Bundle.main.path(forResource: file, ofType: "txt")
            else {
                return nil
        }
    
    do {
    let contents = try String(contentsOfFile: filepath, usedEncoding: nil)
    return contents
    } catch {
    print("File Read Error for file \(filepath)")
    return nil
    }
}
