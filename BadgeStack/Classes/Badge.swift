//
//  Badge.swift
//  BadgeStack
//
//  Created by Kangwook Lee on 2023/09/08.
//

import Foundation
import UIKit

public class Badge: UIView {
    
    public var badgeText: String
    public var badgeTextColor: UIColor
    public var badgeBackgroundColor: UIColor
    public var badgeFont: UIFont
    public var height: CGFloat = 40
    public var isLastBadge = false
    
    public init(text: String, textColor: UIColor, backgroundColor: UIColor, font: UIFont, isLastBadge: Bool = false) {
        self.badgeText = text
        self.badgeTextColor = textColor
        self.badgeBackgroundColor = backgroundColor
        self.badgeFont = font
        self.isLastBadge = isLastBadge
        
        super.init(frame: .zero)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        self.backgroundColor = badgeBackgroundColor
        self.layer.cornerRadius = 10
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let badgeLabel: UILabel = {
            let label = UILabel()
            label.text = badgeText
            label.textColor = badgeTextColor
            label.font = badgeFont
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        self.addSubview(badgeLabel)
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: height),
            badgeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            badgeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            badgeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            badgeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.widthAnchor.constraint(equalToConstant: badgeLabel.intrinsicContentSize.width + 20)
        ])

    }
}
