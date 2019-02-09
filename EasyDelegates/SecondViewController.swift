//
//  SecondViewController.swift
//  EasyDelegates
//
//  Created by Alex Nagy on 09/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
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
        navigationController?.popViewController(animated: true)
    }
    
    @objc fileprivate func optionalButtonTapped() {
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

