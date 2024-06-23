//
//  ViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 23/6/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var primaryButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
    }
    
    func greetUser(_ name: String) {
        greetingLabel.text = "Hello, \(name)"
    }
    
    @IBAction func primaryButtonTapped(_ sender: Any) {
        print("DEBUG: Button tapped.")
        greetUser("User name")
        view.backgroundColor = .white
    }
    
    
}

