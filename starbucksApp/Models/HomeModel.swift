//
//  HomeModel.swift
//  starbucksApp
//
//  Created by Enoch on 7/17/25.
//

import Foundation

class HomeModel: ObservableObject {
    @Published var drinks: [CircleImageCardModel] = [
        CircleImageCardModel(imgName: "espressoConPanna", name: "에스프레소 콘파나"),
        CircleImageCardModel(imgName: "espressoMacchiato", name: "에스프레소 마키아또"),
        CircleImageCardModel(imgName: "iceCafeAmericano", name: "아이스 카페 아메리카노"),
        CircleImageCardModel(imgName: "cafeAmericano", name: "카페 아메리카노"),
        CircleImageCardModel(imgName: "iceCaramelMacchiato", name: "아이스 카라멜 마키아또"),
        CircleImageCardModel(imgName: "caramelMacchiato", name: "카라멜 마키아또")
    ]
    
    @Published var desserts: [CircleImageCardModel] = [
        CircleImageCardModel(imgName: "nuttyCroissant", name: "너티 크루아상"),
        CircleImageCardModel(imgName: "spicySausageBulgogi", name: "매콤 소시지 불고기"),
        CircleImageCardModel(imgName: "miniLeafPies", name: "미니 리프 파이"),
        CircleImageCardModel(imgName: "bbaengOhChocolat", name: "뺑 오 쇼콜라"),
        CircleImageCardModel(imgName: "sausageOlivePie", name: "소시지&올리브 파이")
    ]
    
    @Published var notices: [NoticeCardModel] = [
        NoticeCardModel(imgName: "firstNotice", title: "25년 3월 일회용컵 없는 날 캠페..", explain: "매월 10일은 일회용컵 없는 날! 스타벅스의 모 매장에서 개인컵 및 다회용 컵을 이용하세요."),
        NoticeCardModel(imgName: "secondNotice", title: "스타벅스 ooo점을 찾습니다", explain: "스타벅스 커뮤니티 스토어 파트너를 운영할 기관을 공모합니다."),
        NoticeCardModel(imgName: "thirdNotice", title: "2월 8일, 리저브 스프링 신규 커...", explain: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세요.")
    ]
}
