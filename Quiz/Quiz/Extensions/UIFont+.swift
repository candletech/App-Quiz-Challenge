//
//  UIFont+.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation

import UIKit

enum AppFontVariantions: String {
    case bold = "-Bold"
    case regular = "-Regular"
    case semiBold = "-SemiBold"
}

extension UIFont {
    static func applyFont(ofSize size : CGFloat, weight variation : AppFontVariantions ) -> UIFont? {
        return UIFont(name: "SFProDisplay\(variation.rawValue)", size: size)
    }
}

