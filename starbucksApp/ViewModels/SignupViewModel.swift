//
//  SignupViewModel.swift
//  starbucksApp
//
//  Created by Enoch on 7/10/25.
//

import Foundation
import SwiftUI

class SignupViewModel {
    @Published var nickname: String = ""
    @Published var email: String = ""
    @Published var pwd: String = ""
    
    @AppStorage("userNickname") private var userNickname: String = ""
    @AppStorage("userEmail") private var userEmail:  String = ""
    @AppStorage("userPwd") private var userPwd:  String = ""
    
    public func signup() {
        let newUser = SignupModel(nickname: nickname, email: email, pwd: pwd)
        
        userNickname = newUser.nickname
        userEmail = newUser.email
        userPwd = newUser.pwd
        
    }
    
    
//    var signupModel: SignupModel = .init(nickname: "", email: "", pw: "")
}
