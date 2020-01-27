//
//  GameButton.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import UIKit

class GameButton: UIButton {
    
    var title: String? {
        willSet(newValue) {
            setTitle(newValue, for: .normal)
        }
    }
    
    // MARK: - Initializer & functions
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    private func setupButton() {
        titleLabel?.font = UIFont.applyFont(ofSize: 17, weight: .semiBold)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 0
        contentHorizontalAlignment = .center
        setTitleColor(UIColor.white, for: .normal)
        backgroundColor = .quizOrange
    }
    
}

