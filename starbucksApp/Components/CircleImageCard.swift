//
//  CircleImageCard.swift
//  starbucksApp
//
//  Created by Enoch on 7/18/25.
//

import SwiftUI

struct CircleImageCard: View {
    let cardModel: CircleImageCardModel
    
    var body: some View {
        VStack(spacing: 10) {
            Image(cardModel.imgName)
                .resizable()
                .frame(width: 130, height: 130)
            
            Text(cardModel.name)
                .font(.mainTextSemiBold14)
                .foregroundStyle(.black02)
        }
    }
}
