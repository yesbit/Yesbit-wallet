// Copyright DApps Platform Inc. All rights reserved.

import UIKit

final class SplashView: UIView {
    init() {
        super.init(frame: CGRect.zero)
        self.backgroundColor = UIColor(hex:"FF6600")
//        self.backgroundColor = UIColor(hex:"EB8908")
        let logoImageView = UIImageView(image: R.image.launch_screen_logo())
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(logoImageView)
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
