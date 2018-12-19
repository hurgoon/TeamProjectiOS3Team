//
//  LoginData.swift
//  MangoPractice
//
//  Created by jinsunkim on 19/12/2018.
//  Copyright © 2018 Bernard Hur. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

struct LoginData: Decodable {
    let token: String
    let user: UserData
    
    struct UserData: Decodable {
        let fullName: String
        let userImage: String?
        let pk: Int
        let userName: String
        let wannaGo: [Int]?
        
        enum  CodingKeys: String, CodingKey {
            case fullName = "full_name"
            case userImage = "img_profile"
            case pk
            case userName = "username"
            case wannaGo = "wannago_set"
        }
    }
}

final class UserData {
    static let shared = UserData()
    var userCellData: LoginData?
    
    
    
}
