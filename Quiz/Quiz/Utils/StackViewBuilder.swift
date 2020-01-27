//
//  StackViewBuilder.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import UIKit

// Helper class simplify building StackViews
final class StackViewBuilder {
    
    public var axis: NSLayoutConstraint.Axis = .vertical
    public var alignment: UIStackView.Alignment = .fill
    public var spacing: CGFloat = 0.0
    public var distribution: UIStackView.Distribution = .fillProportionally
    public var arrangedSubviews: [UIView] = []
    
    public typealias BuilderClosure = (StackViewBuilder) -> Void
    
    public init(buildClosure: BuilderClosure) {
        buildClosure(self)
    }
    
    public func build() -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = axis
        stackView.alignment = alignment
        stackView.spacing = spacing
        stackView.distribution = distribution
        return stackView
    }
}

