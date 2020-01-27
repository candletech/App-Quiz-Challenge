//
//  GameViewController.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 26/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class GameViewController: UIViewController {
    
    var keywordsViewModel: KeywordsViewModel!
    var navigation: UINavigationController!
    
    // MARK: - UI Variable
    lazy var quizView: QuizView = {
        let view = QuizView()
        view.keywordsTableView.dataSource = self
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onLoadView()
    }
    
    func onLoadView() {
        keywordsViewModel = KeywordsViewModel()
        keywordsViewModel.loadQuizData()
    }
}
