//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Veronika Torushko on 14.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    

    @IBOutlet weak var profileHeaderView: ProfileHeaderView!
    
    private let oneMoreButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray //оставила это из предыдущего задания, чтобы было красиво
        
        
        //new Button properties
        self.view.addSubview(oneMoreButton)
        oneMoreButton.setTitle("New button", for: .normal)
        oneMoreButton.translatesAutoresizingMaskIntoConstraints = false
        oneMoreButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        oneMoreButton.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        oneMoreButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        oneMoreButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        oneMoreButton.backgroundColor = .systemBlue
        oneMoreButton.setTitleColor(.white, for: .normal)
        
        
    }
    
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }
}

