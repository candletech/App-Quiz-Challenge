//
//  QuizEntity.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 26/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation

struct QuizEntity: Codable {
    let question: String
    let answer: [String]
}
