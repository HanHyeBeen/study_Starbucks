//
//  ContentView.swift
//  starbucksApp
//
//  Created by Enoch on 7/1/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView() {
            Tab{
                HomeView()
            } label: {
                VStack(spacing: 10) {
                    Image(.homeIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 4)
                    
                    Text("Home")
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                }
            }
            
            Tab{
                PayView()
            } label: {
                VStack(spacing: 10) {
                    Image(.payIcon)
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 18, height: 4)
                    
                    Text("Pay")
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                }
            }
            
            Tab{
                OrderView()
            } label: {
                VStack(spacing: 10) {
                    Image(.orderIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 4)
                    
                    Text("Order")
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                }
            }
            
            Tab{
                ShopView()
            } label: {
                VStack(spacing: 19.5) {
                    Image(.shopIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 4)
                    
                    Text("Shop")
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                }
            }
            
            Tab{
                OtherView()
            } label: {
                VStack(spacing: 10) {
                    Image(.otherIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 4)
                    
                    Text("Other")
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                }
            }
        }
        .tint(.green02)
    }
}

struct ContentView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}

