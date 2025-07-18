//
//  NoticeCard.swift
//  starbucksApp
//
//  Created by Enoch on 7/18/25.
//

import SwiftUI

struct NoticeCard: View {
    let cardModel: NoticeCardModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 9) {
            Image(cardModel.imgName)
                .resizable()
                .scaledToFill()
                .padding(.bottom, 7)
            
            Text(cardModel.title)
                .font(.mainTextSemiBold18)
                .foregroundStyle(.black02)
            
            Text(cardModel.explain)
                .font(.mainTextSemiBold13)
                .foregroundStyle(.gray03)
        }
        .frame(width: 242)
    }
}
