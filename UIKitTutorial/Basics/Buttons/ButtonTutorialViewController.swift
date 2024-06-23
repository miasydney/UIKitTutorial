//
//  ButtonTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 23/6/2024.
//

import UIKit

class ButtonTutorialViewController: UIViewController {
    
    private var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show name", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var nameLabel: UILabel = {
       let label = UILabel()
        label.text = "My name is stephan"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showNameButton.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)
        
        // Add show name button to view
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius = 10
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        // Add name label to view
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 16).isActive = true
        
    }
    
    // Func called when button tapped
    @objc func onShowNameTapped() {
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show name" : "Hide name"
        showNameButton.setTitle(title, for: .normal)
    }
}

#Preview {
    ButtonTutorialViewController()
}
