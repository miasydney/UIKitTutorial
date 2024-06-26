//
//  NavigationTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 26/6/2024.
//

import UIKit

class NavigationTutorialViewController: UIViewController {

    private var primaryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Click me", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // center button on screen
        view.addSubview(primaryButton)
        primaryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        primaryButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        primaryButton.addTarget(self, action: #selector(onPrimaryButtonTap), for: .touchUpInside)
        
    }
    
    @objc func onPrimaryButtonTap() {
        // navigate to another screen
        let newVC = LifecycleTutorialViewController()
//        show(newVC, sender: self)
        
        if let nav = navigationController {
            print("DEBUG: Navigating with nav controller")
            nav.pushViewController(newVC, animated: true)
        } else {
            print("DEBUG: Presenting modal sheet")
            newVC.modalPresentationStyle = .automatic
            self.present(newVC, animated: true)
        }
        
//        navigationController?.pushViewController(newVC, animated: true)
        
    }

}
