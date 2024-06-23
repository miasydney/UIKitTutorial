//
//  LabelsTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 23/6/2024.
//

import UIKit

class LabelsTutorialViewController: UIViewController {
    
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
       let label = UILabel()
        label.text = "This is a subtitle for the UIKit course"
        label.textColor = .gray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // textLabel configuration
        textLabel.text = "Hello, World!"
        textLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // subtitleLabel configuration
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 8).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        
    }
}

#Preview {
    LabelsTutorialViewController()
}
