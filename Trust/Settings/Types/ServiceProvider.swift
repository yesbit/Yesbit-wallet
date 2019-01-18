// Copyright DApps Platform Inc. All rights reserved.

import Foundation
import UIKit
import Rswift

enum URLServiceProvider {
    case twitter
    case telegram
    case facebook
    case discord
    case instagram
    case medium
    case reddit
    case helpCenter
    case sourceCode
    case privacyPolicy
    case termsOfService
    case infura
    case dappsOpenSea
    case trustWallet

    var title: String {
        switch self {
        case .twitter: return "Twitter"
        case .telegram: return "Telegram Group"
        case .facebook: return "Facebook"
        case .discord: return "Discord"
        case .instagram: return "Instagram"
        case .medium: return "Medium"
        case .reddit: return "Reddit"
        case .helpCenter: return R.string.localizable.settingsHelpCenterTitle()
        case .sourceCode: return R.string.localizable.settingsSourceCodeButtonTitle()
        case .privacyPolicy: return R.string.localizable.settingsPrivacyTitle()
        case .termsOfService: return R.string.localizable.settingsTermsOfServiceButtonTitle()
        case .infura: return R.string.localizable.infura()
        case .dappsOpenSea: return R.string.localizable.openSea()
        case .trustWallet: return "Trust Wallet"
        }
    }

    var localURL: URL? {
        switch self {
        case .twitter:
            return URL(string: "twitter://user?screen_name=\(Constants.twitterUsername)")!
        case .telegram:
            return URL(string: "tg://resolve?domain=\(preferredTelegramUsername())")
        case .facebook:
            return URL(string: "fb://profile?id=\(Constants.facebookUsername)")
        case .discord: return nil
        case .instagram:
            return URL(string: "instagram://media?id=\(Constants.instagramUsername)")
        case .medium:
            return nil
//            return URL(string: "")
        case .reddit:
            return nil
//            return URL(string: "")
        case .helpCenter: return nil
        case .sourceCode: return nil
        case .privacyPolicy: return nil
        case .termsOfService: return nil
        case .infura: return nil
        case .dappsOpenSea: return nil
        case .trustWallet: return nil
        }
    }

    var remoteURL: URL {
        return URL(string: self.remoteURLString)!
    }

    private var remoteURLString: String {
        switch self {
        case .twitter:
            return "https://twitter.com/\(Constants.twitterUsername)"
        case .telegram:
            return "https://telegram.me/\(preferredTelegramUsername())"
        case .facebook:
            return "https://www.facebook.com/\(Constants.facebookUsername)"
        case .discord:
            return "https://discord.gg/ahPWeHk"
        case .instagram:
            return "https://www.instagram.com/linkcoin.pro/"
        case .medium:
            return "https://medium.com/@LinkCoin"
        case .reddit:
            return "https://www.reddit.com/r/LinkcoinLKN/"
        case .helpCenter:
            return "http://yesbit.io/#contact"
        case .sourceCode:
            return "https://github.com/yesbit/trust-wallet-ios"
        case .privacyPolicy:
            return "https://trustwalletapp.com/privacy-policy.html"
        case .termsOfService:
            return "https://trustwalletapp.com/terms.html"
        case .infura:
            return "https://infura.io/"
        case .dappsOpenSea:
            return "https://opensea.io"
        case .trustWallet:
            return "https://trustwalletapp.com"
        }
    }

    var image: UIImage? {
        switch self {
        case .twitter: return R.image.settings_colorful_twitter()
        case .telegram: return R.image.settings_colorful_telegram()
        case .facebook: return R.image.settings_colorful_facebook()
        case .discord: return R.image.settings_colorful_discord()
        case .instagram: return nil
        case .medium: return nil
        case .reddit: return nil
        case .helpCenter: return R.image.settings_colorful_help_center()
        case .sourceCode: return nil
        case .privacyPolicy: return nil
        case .termsOfService: return nil
        case .infura: return nil
        case .dappsOpenSea: return nil
        case .trustWallet: return nil
        }
    }

    private func preferredTelegramUsername() -> String {
        let languageCode = NSLocale.preferredLanguageCode ?? ""
        return Constants.localizedTelegramUsernames[languageCode] ?? Constants.defaultTelegramUsername
    }
}
