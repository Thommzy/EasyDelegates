//
//  SecondViewController.swift
//  EasyDelegates
//
//  Created by Alex Nagy on 09/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    func didSendMessage(_ message: String)
    func didSendOptionalMessage(_ message: String)
}

extension SecondViewControllerDelegate {
    func didSendOptionalMessage(_ message: String) {}
}

class SecondViewController: UIViewController {
    
    var secondViewControllerDelegate: SecondViewControllerDelegate?
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Send message with delegate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var optionalButton: UIButton = {
        let button = UIButton()
        button.setTitle("Send optional message with delegate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(optionalButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc fileprivate func buttonTapped() {
        let message = "Wow, delegates are cool!"
        secondViewControllerDelegate?.didSendMessage(message)
        navigationController?.popViewController(animated: true)
    }
    
    @objc fileprivate func optionalButtonTapped() {
        let message = "This is an optional message."
        secondViewControllerDelegate?.didSendOptionalMessage(message)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViews()
    }
    
    fileprivate func setupViews() {
        navigationItem.title = "Second"
        navigationItem.hidesBackButton = true
        view.backgroundColor = .white
        view.addSubview(button)
        view.addSubview(optionalButton)
        button.centerInSuperview()
        optionalButton.topToBottom(of: button, offset: 12)
        optionalButton.centerX(to: button)
    }
    
}

