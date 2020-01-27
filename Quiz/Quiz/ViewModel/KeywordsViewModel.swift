//
//  KeywordsViewModel.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 26/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation

protocol KeywordsViewModelProtocol {
    
    /// Loads the quiz data from the necessary dataSources
    func loadQuizData()
    
    /// Toggles the timer on and off
    func toggleTimer()
    
    /// Resets the quiz and viewData related to it
    func resetQuiz()
    
    /// Verifies if the user has inputed a valid answer
    ///
    /// - Parameter input: the user input, from a textField
    func verifyTextFieldInput(_ input: String?)
}

class KeywordsViewModel {

    let serviceProvider = ServiceProvider<QuizService>()
    var keyWords: QuizEntity?
    var isLoading: ((Bool) -> Void)
    private var quizTimer: TimerManager = TimerManager()
    private var cellViewModels: [KeywordCellViewModel] = []
    var numberOfHits: Int = 0
    
    private var hits: [String] = [] {
        didSet(newValue) {
            let hitsReverseOrder = hits.reversed()
            cellViewModels = hitsReverseOrder.map { (keyword) in
                KeywordCellViewModel(keyword: keyword)
            }
        }
    }
    
    var buttonTitle: String? {
        return quizTimer.timer == nil ? "Start" : "Reset"
    }
    
    var numberOfAnswers: Int  {
        return keyWords?.answer.count ?? 0
    }
    
    var numberOfRows: Int {
        return cellViewModels.count
    }
    
    var countLabel: String? {
        return String(format:"%02i/%02i", numberOfHits, numberOfAnswers)

    }
    

    init() { }
    
    func getCellViewModel(for indexPath: IndexPath) -> KeywordCellViewModel? {
        return cellViewModels[indexPath.row]
    }
}

