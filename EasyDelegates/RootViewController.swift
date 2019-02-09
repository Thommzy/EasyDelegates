//
//  RootViewController.swift
//  EasyDelegates
//
//  Created by Alex Nagy on 09/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class RootViewController: UIViewController {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Me: I am waiting for a message..."
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupNavigation()
        setupViews()
    }
    
    fileprivate func setupNavigation() {
        navigationItem.title = "Root"
        
        let messageBarButtonItem = UIBarButtonItem(title: "Message", style: .done, target: self, action: #selector(messageBarButtonItemTapped))
        let resetBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(resetBarButtonItemTapped))
        
        let pushBarButtonItem = UIBarButtonItem(title: "Push", style: .done, target: self, action: #selector(pushBarButtonItemTapped))
        
        navigationItem.setLeftBarButtonItems([messageBarButtonItem, resetBarButtonItem], animated: false)
        navigationItem.setRightBarButton(pushBarButtonItem, animated: false)
    }
    
    @objc fileprivate func pushBarButtonItemTapped() {
        let controller = SecondViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc fileprivate func messageBarButtonItemTapped() {
        
    }
    
    @objc fileprivate func resetBarButtonItemTapped() {
        
    }
    
    fileprivate func setupViews() {
        view.backgroundColor = .white
        view.addSubview(label)
        label.centerInSuperview()
    }
    
}

