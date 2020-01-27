//
//  QuizService.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 26/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation

enum QuizService {
    case keywords
}

extension QuizService: Service {
    var baseURL: String {
        return "https://codechallenge.arctouch.com"
    }
    
    var path: String {
        switch self {
        case .keywords:
            return "/quiz/1"
        }
    }

    var parameters: [String: Any]? {
        return ["":""]

    }

    var sampleData: String {
        switch self {
        case .keywords:
            return ""
        }
    }

    var method: ServiceMethod {
        return .get
    }

    var dataType: Codable.Type {
        switch self {
        case .keywords:
            return QuizEntity.self
        }
    }
}
