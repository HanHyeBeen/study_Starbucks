//
//  SignupView.swift
//  starbucksApp
//
//  Created by Enoch on 7/10/25.
//

import SwiftUI

struct SignupView: View {
    @ObservedObject var router: NavigationRouter
    @State private var viewModel = SignupViewModel()
    
    var body: some View {
        VStack(spacing: 428) {
            InputView
            
            AddBtnView
        }
        .safeAreaPadding(.horizontal, 19)
        .safeAreaPadding(.top, 172)
        .safeAreaPadding(.bottom, 72)
        .navigationTitle("가입하기")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    router.pop()
                }, label: {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color.black)
                    }
                })
            }
        }
    }
    
    var InputView: some View {
        VStack(spacing: 49) {
            //함수로 분리
            VStack(spacing: 9) {
                TextField("닉네임", text: $viewModel.nickname)
                    .font(.mainTextRegular18)
                    .foregroundStyle(.gray02)
                
                Divider()
                    .foregroundStyle(.gray00)
            }
            
            VStack(spacing: 9) {
                TextField("이메일", text: $viewModel.email)
                    .font(.mainTextRegular18)
                    .foregroundStyle(.gray02)
                
                Divider()
                    .foregroundStyle(.gray00)
            }
            
            VStack(spacing: 9) {
                TextField("비밀번호", text: $viewModel.pwd)
                    .font(.mainTextRegular18)
                    .foregroundStyle(.gray02)
                
                Divider()
                    .foregroundStyle(.gray00)
            }
        }
    }
    
    var AddBtnView: some View {
        Button(action: {
            if !viewModel.nickname.isEmpty && !viewModel.email.isEmpty && !viewModel.pwd.isEmpty {
                viewModel.signup()
                router.pop()
            }
        }, label: {
            MainBtn(btnText: "생성하기", btnHeight: 58)
        })
    }
}

struct SignupView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            SignupView(router: NavigationRouter())
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
