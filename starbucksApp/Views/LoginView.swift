//
//  LoginView.swift
//  starbucksApp
//
//  Created by Enoch on 7/1/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
    
        VStack (alignment: .leading) {
            Spacer()
            TitleView
            Spacer()
            InputIdPwView
            Spacer()
            LoginBtnView
            Spacer()
        }
        .padding(.horizontal, 19)
    }
    
}

private var TitleView: some View {
    VStack (alignment: .leading) {
        Image("Logo")
            .resizable()
            .frame(width: 97, height: 95)
        
        Spacer().frame(height: 28)
        
        Group {
            Text("안녕하세요.")
            Text("스타벅스입니다.")
        }
        .multilineTextAlignment(.leading)
        .font(.mainTextExtraBold)
        .foregroundStyle(.black)
        
        Spacer().frame(height: 19)
        
        Text("회원 서비스 이용을 위해 로그인해주세요")
            .multilineTextAlignment(.leading)
            .font(.mainTextMedium16)
            .foregroundStyle(.gray01)
    }
}

private var InputIdPwView: some View {
    VStack (alignment: .leading) {
        Text("아이디")
            .font(.mainTextRegular13)
            .foregroundStyle(.black01)
        
        Divider()
            .foregroundStyle(.gray00)
        
        Spacer().frame(height: 47)
        
        Text("비밀번호")
            .font(.mainTextRegular13)
            .foregroundStyle(.black01)
        
        Divider()
            .foregroundStyle(.gray00)
        
        Spacer().frame(height: 47)
        
        Button(action: {
            print("로그인버튼")
        }, label: {
            //방법1
//            Text("로그인하기")
//                .font(.mainTextMedium16)
//                .foregroundStyle(.white)
//                .padding(.vertical, 13)
//                .frame(maxWidth: .infinity)
//                .background(
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color.green01)
//                )
            //방법2
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 46)
                .foregroundStyle(.green01)
                .overlay(
                    Text("로그인하기")
                        .font(.mainTextMedium16)
                        .foregroundStyle(.white)
                )
        })
    }
}

private var LoginBtnView: some View {
    HStack {
        Spacer()
        
        VStack (alignment: .center) {
            Button(action: {
                
            }, label: {
                Text("이메일로 회원가입하기")
                    .font(.mainTextRegular12)
                    .foregroundStyle(.gray04)
                    .underline()
            })
            
            Spacer().frame(height: 19)
            
            Button(action: {
                print("LoginKakao")
            }, label: {
                Image("LoginKakaoBtn")
            })
            
            Spacer().frame(height: 19)
            
            Button(action: {
                print("LoginApple")
            }, label: {
                Image("LoginAppleBtn")
            })
        }
        
        Spacer()
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
