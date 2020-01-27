//
//  Coordinator.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 26/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}
