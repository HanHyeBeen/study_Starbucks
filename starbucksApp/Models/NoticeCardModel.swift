//
//  NoticeCardModel.swift
//  starbucksApp
//
//  Created by Enoch on 7/18/25.
//

import Foundation

struct NoticeCardModel: Identifiable {
    let id = UUID()
    let imgName: String
    let title: String
    let explain: String
}
