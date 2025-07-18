//
//  LoginViewModel.swift
//  starbucksApp
//
//  Created by Enoch on 7/1/25.
//

import Foundation
import SwiftUI

enum LoginRoute: Hashable {
    case signup
}

final class LoginViewModel: ObservableObject {
    @Published var loginData = LoginModel()
    @Published var path = NavigationPath()
    
    // 로그인 버튼 눌렀을 때
    func login() {
        print("로그인 시도: \(loginData.id), \(loginData.pwd)")
        // 여기에 실제 로그인 API 호출 로직이 들어갈 수 있음
    }
    
    func goToSignup() {
        path.append(LoginRoute.signup)
    }
}
