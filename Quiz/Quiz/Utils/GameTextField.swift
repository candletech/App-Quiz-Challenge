//
//  GameTextField.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import UIKit

class GameTextField: UITextField {
    
    // MARK: - Initializer & functions
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTextField()
    }
    
    func setupTextField() {
        backgroundColor = UIColor.quizGray
        font = UIFont.applyFont(ofSize: 17, weight: .regular)
        borderStyle = .none
        layer.masksToBounds = true
        layer.cornerRadius = 8.0
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: frame.height))
        leftViewMode = UITextField.ViewMode.always
    }
}
