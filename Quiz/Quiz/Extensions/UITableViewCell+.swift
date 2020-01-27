//
//  UITableViewCell+.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import UIKit

/// Protocol enable to work with typeSafe reusable idetifiers where class itself names gonna be the identifier
protocol Identifiable {
    /**
        Reusable value from some identifiable View
        - returns: return a `String` with Identifiable name
    */
    static var reuseIdentifier: String { get }
}

extension Identifiable {
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}

extension UITableViewCell: Identifiable {}
