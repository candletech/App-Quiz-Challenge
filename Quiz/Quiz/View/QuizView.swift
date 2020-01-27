//
//  QuizView.swift
//  Quiz
//
//  Created by Lorrayne Paraiso on 27/01/20.
//  Copyright © 2020 Arc Touch. All rights reserved.
//

import UIKit

class QuizView: UIView {
    
    // MARK: - Control Variable
    private var footerViewBottomConstraint: NSLayoutConstraint?
    private var footerViewTopConstraint: NSLayoutConstraint?
    private var keywordsTableViewBottomConstraint: NSLayoutConstraint?
    
    var isLoading: Bool = false {
        willSet(newValue) {
            if newValue {
                loadingView.showLoading()
            } else {
                loadingView.hideLoading()
            }
        }
    }
    
    
    // MARK: - UI VAriable
    private var loadingView: LoadingPresentable
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.applyFont(ofSize: 34, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var quizTextField: UITextField = {
        let textField = GameTextField()
        textField.placeholder = "Insert Word"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var keywordsTableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.showsHorizontalScrollIndicator = false
        tableView.allowsSelection = false
        tableView.tableFooterView = UIView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.reuseIdentifier)
        return tableView
    }()
    
    lazy var footerView: FooterView = {
        let footer = FooterView()
        footer.translatesAutoresizingMaskIntoConstraints = false
        return footer
    }()
    
    // MARK: - Initializatores
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupView()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        guard let firstTouch = touches.first else {
            return
        }
        
        if firstTouch.view != self.quizTextField {
            self.quizTextField.endEditing(true)
        }
    }
}

extension QuizView : ViewCode {
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(quizTextField)
        addSubview(keywordsTableView)
        addSubview(footerView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 44),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            quizTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            quizTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            quizTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            quizTextField.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        NSLayoutConstraint.activate([
            keywordsTableView.topAnchor.constraint(equalTo: quizTextField.bottomAnchor, constant: 16),
            keywordsTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            keywordsTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
        
        NSLayoutConstraint.activate([
            footerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
        
        footerViewBottomConstraint = footerView.bottomAnchor.constraint(equalTo: bottomAnchor)
        footerViewBottomConstraint?.isActive = true
        
        footerViewTopConstraint = footerView.topAnchor.constraint(equalTo: keywordsTableView.bottomAnchor)
        footerViewTopConstraint?.isActive = true
        
        keywordsTableViewBottomConstraint = footerViewTopConstraint

    }
    
    func setupAdditionalConfigurantion() {
        backgroundColor = .white
    }
}

