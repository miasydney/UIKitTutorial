//
//  ImagesTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Mia on 23/6/2024.
//

import UIKit

class ImagesTutorialViewController: UIViewController {

    private var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.tintColor = .red
        imageView.image = UIImage(systemName: "paperplane")
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

#Preview {
    ImagesTutorialViewController()
}
