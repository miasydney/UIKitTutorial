//
//  LifecycleTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 26/6/2024.
//

import UIKit

class LifecycleTutorialViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        
        print("DEBUG: View did init..")
    }
    
    deinit {
        print("DEBUG: view was destroyed.")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // view creation methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        print("DEBUG: View did load..")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("DEBUG: View will appear..")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("DEBUG: View did appear..")
    }
    
    // view destruction methods
    override func viewWillDisappear(_ animated: Bool) {
        print("DEBUG: View will disappear..")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("DEBUG: View did disappear..")

    }

}
