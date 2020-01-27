//
//  KeywordsViewModelProtocol.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 26/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation
// MARK: - KeywordsViewModelBusinessLogic
extension KeywordsViewModel: KeywordsViewModelProtocol {
    
    func loadQuizData() {
        serviceProvider.load(service: .keywords) { result in
            switch result {
            case .success(let resp):
                self.responseData(resp)
            case .failure(let error):
                print(error.localizedDescription)
            case .empty:
                print("No data")
            }
        }
    }
    
    func toggleTimer() {
        
    }
    
    func resetQuiz() {
        
    }
    
    func verifyTextFieldInput(_ input: String?) {
        
    }
    
    // MARK: - FetchQuizUseCase Handlers

    private func responseData(_ data: Data) {
        do {
            let keywordsReponse = try JSONDecoder().decode(QuizEntity.self, from: data)
            self.keyWords = keywordsReponse
        } catch {
            self.keyWords = nil
        }
    }

    
    private func handleServiceError(_ error: Error) {
        
    }
    
    // MARK: - Timer Logic
    
    private func startTimer() {
        
    }
    
    private func handleTimerFinish() {
        
    }
    
    private func resetTimerInfo() {
        
    }
    
    // MARK: - verifyTextFieldInput Logic
    
    private func cleanTextFieldIfNeeededWhenNumberOfRightAnswersWillSet(newValue: Int?) {
        
    }
    
    // MARK: - Modals
    
    private func showTimeIsUpModal() {
        
    }
    
    private func showWinnerModal() {
    
    }
    
    private func showWinnerModalIfNeeded() {
       
    }
    
    private func showYouShouldStartTheTimerErrorModal() {
        
    }
    
}
