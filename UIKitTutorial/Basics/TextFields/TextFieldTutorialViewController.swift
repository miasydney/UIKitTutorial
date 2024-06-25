//
//  TextFieldTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 24/6/2024.
//

import UIKit

class TextFieldTutorialViewController: UIViewController {
    
    private var textField: UITextField = {
       let tf = UITextField()
        tf.placeholder = "Search..."
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.returnKeyType = .search
       return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        textField.delegate = self
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)

        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
    
    @objc func onEditingChanged(_ sender: UITextField) {
        print("Debug: Text field text is \(sender.text)")
    }

}

extension TextFieldTutorialViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("DEBUG: Return key tapped...")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("DEBUG: Did begin editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("DEBUG: Did end editing")
    }
}

#Preview {
    TextFieldTutorialViewController()
}
