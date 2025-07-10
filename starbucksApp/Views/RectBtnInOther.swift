//
//  BtnInOther.swift
//  starbucksApp
//
//  Created by Enoch on 7/11/25.
//

import SwiftUI

struct BtnInOther: View {
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        Button(action: {
            print(title)
        }, label: {
            VStack(spacing: 4) {
                Image(title)
                    .resizable()
                    .frame(width: 48, height: 48)
                    .padding(.top, 19)
                
                Text(title)
                    .font(.mainTextSemibold16)
                    .foregroundStyle(.black03)
                    .frame(width: 102)
                    .padding(.bottom, 19)
            }
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.clear)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
            )
        })
    }
}
