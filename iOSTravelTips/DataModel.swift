//
//  MD5.swift
//  TravelTips
//
//  Created by Teng on 1/5/16.
//  Copyright © 2016 huoteng. All rights reserved.
//  将密码转为MD5值

import Foundation
import CryptoSwift

func encryptPassword(userPass: String) -> String {
    return userPass.md5()
}

enum DataType:Int {
    case Bill = 1
    case Note
    case Plan
    case Item
}

//通过继承实现泛化
class UserData {
    
}

class Bill: UserData {
    
}

class Note: UserData {
    
}

class Plan: UserData {
    
}