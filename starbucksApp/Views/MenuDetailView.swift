//
//  MenuDetailView.swift
//  starbucksApp
//
//  Created by Enoch on 7/18/25.
//

import SwiftUI

struct MenuDetailView: View {
    @State var selectedTemperature = "HOT"
    var temperatures = ["HOT", "ICED"]
    
    var body: some View {
        VStack(spacing: 20) {
            TopSectionView
            MenuExplainView
            OrderBtnView
        }
        .ignoresSafeArea()
    }
    
    // MARK: - TopSection
    var TopSectionView: some View {
        ZStack {
            Image(.detailCafeAmericano)
                .resizable()
                .scaledToFit()
        }
    }
    
    // MARK: - MenuExplain
    var MenuExplainView: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 4) {
                    Text("카페 아메리카노")
                        .font(.mainTextSemibold24)
                        .foregroundStyle(.black03)
                    
                    Image(.newIcon)
                        .resizable()
                        .frame(width: 20, height: 10)
                    
                    Spacer()
                }
                
                Text("Caffe Americano")
                    .font(.mainTextSemiBold14)
                    .foregroundStyle(.gray01)
            }
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피")
                    .font(.mainTextSemiBold14)
                    .foregroundStyle(.gray06)
                    
                HStack {
                    Text("4,700원")
                        .font(.mainTextBold24)
                        .foregroundStyle(.black03)
                    
                    Spacer()
                }
            }
            
            Spacer()
            
            MenuTemperatureView
        }
        .frame(maxWidth: .infinity, minHeight: 256, maxHeight: 256, alignment: .leading)
        .padding(.horizontal, 10)
    }
    
    // MARK: - MenuTemperature
    var MenuTemperatureView: some View {
        Picker("choose", selection: $selectedTemperature) {
            ForEach(temperatures, id: \.self) {
                Text($0)
            }
        }
        .pickerStyle(.palette)
        .padding()
    }

    // MARK: - OrderBtn
    var OrderBtnView: some View {
        VStack {
            Button(action: {
                
            }, label: {
                MainBtn(btnText: "주문하기", btnHeight: 43)
            })
            .padding(.horizontal, 28)
        }
    }
}

#Preview {
    MenuDetailView()
}
