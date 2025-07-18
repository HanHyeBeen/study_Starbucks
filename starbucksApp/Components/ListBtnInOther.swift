//
//  ListBtnInOther.swift
//  starbucksApp
//
//  Created by Enoch on 7/11/25.
//

import SwiftUI

struct ListBtnInOther: View {
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        Button(action: {
            print(title)
        }, label: {
            HStack(spacing: 4) {
                Image(title)
                    .resizable()
                    .frame(width: 32, height: 32)
                
                Text(title)
                    .font(.mainTextSemibold16)
                    .foregroundStyle(.black02)
//                    .frame(width: 137, alignment: .leading)
            }
            .padding(.vertical, 16)
        })
    }
}
