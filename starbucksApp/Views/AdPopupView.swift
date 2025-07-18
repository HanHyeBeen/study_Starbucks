//
//  AdPopupView.swift
//  starbucksApp
//
//  Created by Enoch on 7/10/25.
//

import SwiftUI

struct AdPopupView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            PopupContentView
        }
        .ignoresSafeArea()
    }
    
    var PopupContentView: some View {
        VStack {
            Image("AdPopupImg")
                .resizable()
                .frame(width: .infinity, height: 720)
//                .padding(.bottom, 106)
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Button(action: {
                    print("자세히 보기")
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(.green01)
                            .frame(height: 58)
                        
                        Text("자세히 보기")
                            .font(.mainTextMedium18)
                            .foregroundStyle(.white)
                    }
                })
                .padding(.horizontal, 18)
                .padding(.bottom, 19)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Text("X 닫기")
                        .font(.mainTextLight14)
                        .foregroundStyle(.gray05)
                })
                .padding(.trailing, 37)
            }
        }
    }
}

struct AdPopupView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            AdPopupView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
