//
//  OtherView.swift
//  starbucksApp
//
//  Created by Enoch on 7/11/25.
//

import SwiftUI

struct OtherView: View {
    @AppStorage("userNickname") private var userNickname: String = "(작성한 닉네임)"
    
    var body: some View {
        VStack {
            Spacer()
            
            LogoutBtn
            
            NicknameText
                .padding(.vertical, 41)
            
            middleBtn
                .padding(.leading, 36)
                .padding(.trailing, 29)
            
            Spacer()
            
            PayBtnList
                .padding(.horizontal, 10)
            
            Spacer()
            
            SupportBtnList
        }
        .safeAreaPadding(.bottom, 41)
    }
    
    var LogoutBtn: some View {
        HStack {
            Text("Other")
                .font(.mainTextBold24)
                .foregroundStyle(Color.black)
            
            Spacer()
            
            Button(action: {
                print("로그아웃")
            }, label: {
                Image(.logoutBtn)
                    .resizable()
                    .frame(width: 35, height: 35)
            })
        }
        .padding(.horizontal, 23.5)
        .padding(.vertical, 16)
    }
    
    var NicknameText: some View {
        VStack {
            HStack {
                Text(userNickname)
                    .font(.mainTextSemibold24)
                    .foregroundColor(.green01)
                
                Text("님")
                    .font(.mainTextSemibold24)
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
            }
            
            HStack(spacing: 4) {
                Text("환영합니다!")
                    .font(.mainTextSemibold24)
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                
                Image("welcomeImg")
                    .frame(width: 24, height: 21)
            }
        }
    }
    
    var middleBtn: some View {
        HStack(spacing: 10.5) {
            RectBtnInOther(title: "별 히스토리")
            RectBtnInOther(title: "전자영수증")
            RectBtnInOther(title: "나만의 메뉴")
        }
        .padding(.horizontal, 24)
    }
    
    var PayBtnList: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Pay")
                .font(.mainTextSemiBold18)
                .foregroundStyle(Color.black)
                .padding(.bottom, 8)
            
            HStack {
                ListBtnInOther(title: "스타벅스 카드 등록")
                
                Spacer()
                
                ListBtnInOther(title: "카드 교환권 등록")
            }
            
            HStack {
                ListBtnInOther(title: "쿠폰 등록")
                
                Spacer()
                
                ListBtnInOther(title: "카드 교환권 등록")
            }
            
            Divider()
        }
    }
    
    var SupportBtnList: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("고객지원")
                .font(.mainTextSemiBold18)
                .foregroundStyle(Color.black)
                .padding(.bottom, 8)
            
            HStack {
                ListBtnInOther(title: "스토어 케어")
                
                Spacer()
                
                ListBtnInOther(title: "고객의 소리")
            }
            
            HStack {
                ListBtnInOther(title: "매장 정보")
                
                Spacer()
                
                ListBtnInOther(title: "반납기 정보")
            }
            
            HStack {
                ListBtnInOther(title: "마이 스타벅스 리뷰")
            }
        }
        .padding(.horizontal, 10)
    }
}

struct OtherView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            OtherView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
