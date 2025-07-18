//
//  MainBtn.swift
//  starbucksApp
//
//  Created by Enoch on 7/18/25.
//

import SwiftUI

struct MainBtn: View {
    var btnText: String = ""
    var btnHeight: CGFloat = 46
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: btnHeight)
            .foregroundStyle(.green01)
            .overlay(
                Text(btnText)
                    .font(.mainTextMedium16)
                    .foregroundStyle(.white)
            )
    }
}
