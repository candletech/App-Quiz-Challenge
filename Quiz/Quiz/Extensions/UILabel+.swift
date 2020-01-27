//
//  UILabel+.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import UIKit

enum Typography {
    
    // MARK: - Types
    
    case largeTitle
    case body
    case button
    
    // MARK: - Properties
    
    var font: UIFont {
        switch self {
        case .largeTitle:
            return UIFont.sfPro(ofSize: 34, weight: .bold)
        case .body:
            return UIFont.sfPro(ofSize: 17, weight: .regular)
        case .button:
            return UIFont.sfPro(ofSize: 17, weight: .semibold)
        }
    }
    
}

extension UILabel {
    
    /// Applies Inter's typography to the Label.
    ///
    /// - Parameters:
    ///   - typography: The Typography type.
    ///   - color: The color of the text.
    func apply(typography: Typography, with color: UIColor) {
        font = typography.font
        textColor = color
    }
    
}
