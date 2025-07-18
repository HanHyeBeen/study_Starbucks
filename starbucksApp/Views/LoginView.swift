//
//  LoginView.swift
//  starbucksApp
//
//  Created by Enoch on 7/1/25.
//

import SwiftUI

struct LoginView: View {
    @State private var router = NavigationRouter()
    @StateObject private var viewModel = LoginViewModel()
    @FocusState private var isFocused: Bool
    
    // MARK: - body
    var body: some View {
        NavigationStack(path: $router.path) {
            VStack(alignment: .leading) {
                Spacer()
                
                TitleView
                
                Spacer()
                
                InputIdPwView
                
                Spacer()
                
                LoginBtnView
                
                Spacer()
            }
            .safeAreaPadding(.horizontal, 19)
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .signup:
                    SignupView(router: router)
                }
            }
        }
    }
    
    // MARK: - title
    private var TitleView: some View {
        VStack(alignment: .leading) {
            Image("Logo")
                .resizable()
                .frame(width: 97, height: 95)
                .padding(.bottom, 28)
            
            Text("안녕하세요.\n스타벅스입니다.")
            .multilineTextAlignment(.leading)
            .font(.mainTextExtraBold)
            .foregroundStyle(.black)
            .padding(.bottom, 19)
            
            Text("회원 서비스 이용을 위해 로그인해주세요")
                .multilineTextAlignment(.leading)
                .font(.mainTextMedium16)
                .foregroundStyle(.gray01)
        }
    }
    
    // MARK: - input
    private var InputIdPwView: some View {
        VStack(alignment: .leading, spacing: 47) {
            VStack(alignment: .leading) {
                TextField("아이디", text: $viewModel.loginData.id)
                    .focused($isFocused)
                    .font(.mainTextRegular13)
                    .foregroundStyle(.black01)
                
                Divider()
                    .frame(height: 0.7)
                    .foregroundColor(isFocused ? .green00 : .gray00)
                    .animation(.easeInOut, value: isFocused)
            }
            
            VStack(alignment: .leading) {
                TextField("비밀번호", text: $viewModel.loginData.pwd)
                    .focused($isFocused)
                    .font(.mainTextRegular13)
                    .foregroundStyle(.black01)
                
                Divider()
                    .frame(height: 0.7)
                    .foregroundColor(isFocused ? .green00 : .gray00)
                    .animation(.easeInOut, value: isFocused)
            }
            
            Button(action: {
                print("로그인버튼")
            }, label: {
                MainBtn(btnText: "로그인하기")
            })
        }
    }

    private var LoginBtnView: some View {
        HStack {
            Spacer()
            
            VStack (alignment: .center, spacing: 19) {
                Button(action: {
                    router.push(.signup)
                }, label: {
                    Text("이메일로 회원가입하기")
                        .font(.mainTextRegular12)
                        .foregroundStyle(.gray04)
                        .underline()
                })
                
                Button(action: {
                    print("LoginKakao")
                }, label: {
                    Image("LoginKakaoBtn")
                })
                
                Button(action: {
                    print("LoginApple")
                }, label: {
                    Image("LoginAppleBtn")
                })
            }
            
            Spacer()
        }
    }
}

struct LoginView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            LoginView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
