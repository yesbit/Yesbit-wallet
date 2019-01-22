// Copyright DApps Platform Inc. All rights reserved.

import Foundation
import UIKit

struct WelcomeViewModel {

    var title: String {
        return "Welcome"
    }

    var backgroundColor: UIColor {
        return .white
    }

    var pageIndicatorTintColor: UIColor {
//        return UIColor(hex: "c3dbee")
        return Colors.yesbitOrange
    }

    var currentPageIndicatorTintColor: UIColor {
//        return UIColor(hex: "438FCA")
        return Colors.yesbitOrange
    }

    var numberOfPages = 0
    var currentPage = 0
}
