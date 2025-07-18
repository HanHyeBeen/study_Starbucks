//
//  NavigationRouter.swift
//  starbucksApp
//
//  Created by Enoch on 7/17/25.
//

import Foundation
import SwiftUI
import Observation

@Observable
class NavigationRouter: ObservableObject {
    var path = NavigationPath()

    /// 특정 화면을 추가 (Push 기능)
    func push(_ route: Route) {
        path.append(route)
    }

    /// 마지막 화면 제거 (Pop 기능)
    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
}
