//
//  KeywordCellViewModel.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation

struct KeywordCellViewModel {
    
    // MARK: - Properties
    private let keyword: String
    
    // MARK: - Output strings
    public var keywordText: String {
        return keyword.firstCapitalized
    }
    
    // MARK: - Initializer
    init(keyword: String) {
        self.keyword = keyword
    }
}
