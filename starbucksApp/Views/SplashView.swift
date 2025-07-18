//
//  SplashView.swift
//  starbucksApp
//
//  Created by Enoch on 7/1/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(.green01)
            
            Image("Logo")
                .resizable()
                .frame(width: 168, height: 168)
        }
    }
}

struct SplashView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            SplashView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
