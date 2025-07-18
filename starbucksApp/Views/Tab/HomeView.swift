//
//  HomeView.swift
//  starbucksApp
//
//  Created by Enoch on 7/11/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeModel()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                topBannerView
                allContentsView
            }
        }
    }
    
    // MARK: - topBanner
    var topBannerView: some View {
        let progress: Int = 1
        let progressWidth: CGFloat = 255 * (CGFloat(progress) / 12)
        
        
        return ZStack(alignment: .topLeading) {
            Image(.topImg)
                .resizable()
                .scaledToFit()
            
            VStack {
                HStack {
                    Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                        .font(.mainTextBold24)
                        .foregroundStyle(.black03)
                    
                    Spacer()
                }
                .padding(.bottom, 9)
                
                HStack {
                    Spacer()
                    
                    HStack(spacing: 4) {
                        Text("내용 보기")
                            .font(.mainTextRegular13)
                            .foregroundStyle(.gray06)
                        
                        Image(.rArrow)
                            .resizable()
                            .frame(width: 10, height: 5)
                            .padding(.leading, 3)
                            .padding(.top, 5)
                            .padding(.bottom, 6)
                    }
                }
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("11⭑ until next Reward")
                            .font(.mainTextSemibold16)
                            .foregroundStyle(.brown02)
                        
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundStyle(Color(red: 0.86, green: 0.86, blue: 0.86))
                                .frame(width: 255, height: 8)
                            
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundStyle(.brown01)
                                .frame(width: progressWidth, height: 8)
                        }
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 5) {
                        Text("1")
                            .font(.mainTextSemiBold38)
                            .foregroundStyle(.black03)
                        
                        Text("/")
                            .font(.mainTextLight24)
                            .foregroundStyle(Color(red: 0.79, green: 0.79, blue: 0.79))
                        
                        Text("12⭑")
                            .font(.mainTextSemibold24)
                            .foregroundStyle(.brown02)
                    }
                }
            }
            .padding(.horizontal, 28.16)
            .padding(.top, 106)
        }
    }
    
    // MARK: - allContents
    var allContentsView: some View {
        VStack(spacing: 20) {
            firstAdBannerView
            recommendDrinkView
            secondAdBannerView
            newNoticeView
            thirdAdBannerView
            recommendDessertView
            fourthAdBannerView
        }
        .padding(.horizontal, 10)
    }
    
    // MARK: - firstAdBanner
    var firstAdBannerView: some View {
        Image(.iceChallengeBanner)
            .resizable()
            .scaledToFill()
    }
    
    // MARK: - recommendDrink
    var recommendDrinkView: some View {
        VStack(spacing: 25) {
            HStack {
                Text("()")
                    .font(.mainTextBold24)
                    .foregroundStyle(.brown01)
                +
                Text("님을 위한 추천 메뉴")
                    .font(.mainTextBold24)
                    .foregroundStyle(.black03)
                
                Spacer()
            }
            
            ScrollView(.horizontal, content: {
                LazyHStack(spacing: 16) {
                    ForEach(viewModel.drinks) { drink in
                        CircleImageCard(cardModel: drink)
                    }
                }
            })
        }
        .padding(.horizontal, 10)
    }
    
    // MARK: - secondAdBanner
    var secondAdBannerView: some View {
        VStack(spacing: 20) {
            Image(.bloomingBanner)
                .resizable()
                .scaledToFill()
            
            Image(.serviceSuscibe)
                .resizable()
                .scaledToFill()
        }
    }
    
    // MARK: - newNotice
    var newNoticeView: some View {
        VStack {
            HStack {
                Text("What's New")
                    .font(.mainTextBold24)
                    .foregroundStyle(.black03)
                
                Spacer()
            }
            
            ScrollView(.horizontal, content: {
                LazyHStack {
                    ForEach(viewModel.notices) { notice in
                        NoticeCard(cardModel: notice)
                    }
                }
            })
        }
    }
    
    // MARK: - thirdAdBanner
    var thirdAdBannerView: some View {
        VStack(spacing: 14) {
            Image(.mugSetBanner)
                .resizable()
                .scaledToFill()
            
            Image(.onlineStoreBanner)
                .resizable()
                .scaledToFill()
            
            Image(.deliveryBanner)
                .resizable()
                .scaledToFill()
        }
    }
    
    // MARK: - recommendDessert
    var recommendDessertView: some View {
        VStack(spacing: 16) {
            HStack {
                Text("하루가 달콤해지는 디저트")
                    .font(.mainTextBold24)
                    .foregroundStyle(.black03)
                
                Spacer()
            }
            
            ScrollView(.horizontal, content: {
                LazyHStack(spacing: 16) {
                    ForEach(viewModel.desserts) { dessert in
                        CircleImageCard(cardModel: dessert)
                    }
                }
            })
        }
        .padding(.horizontal, 10)
    }
    
    // MARK: - fourthAdBanner
    var fourthAdBannerView: some View {
        VStack(spacing: 20) {
            Image(.coldbrewBanner)
                .resizable()
                .scaledToFill()
            
            Image(.favoritesBanner)
                .resizable()
                .scaledToFill()
            
            Image(.sizeupBanner)
                .resizable()
                .scaledToFill()
        }
    }
}

struct HomeView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            HomeView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
