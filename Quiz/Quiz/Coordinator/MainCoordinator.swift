//
//  MainCoordinator.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 26/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var gameViewController: GameViewController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.pushViewController(buildQuizList(), animated: false)
    }
    
    func buildQuizList() -> UIViewController {
        let viewController = GameViewController()
        gameViewController = viewController
        return gameViewController!
    }
}


