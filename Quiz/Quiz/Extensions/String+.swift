//
//  String+.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation

extension String {
    /**
       Varialble to captilize the frist character of a string
     - Returns: a self string with the frist character captilized
    */
    var firstCapitalized: String {
        return prefix(1).capitalized + dropFirst()
    }
}
