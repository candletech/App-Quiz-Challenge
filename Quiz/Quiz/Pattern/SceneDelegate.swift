//
//  SceneDelegate.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 26/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import UIKit
import SwiftUI
import Network

var newtworkConnection = false
var applicationName = "Quiz Challenge"

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    let monitor = NWPathMonitor()
    var coordinator: MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
       let navigationController = UINavigationController()
        coordinator = MainCoordinator(navigationController: navigationController)
        coordinator?.start()
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = GameViewController()
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
