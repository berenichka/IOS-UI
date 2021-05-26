//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Veronika Torushko on 14.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
   private let profileHeaderView = ProfileHeaderView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileHeaderView)
        view.backgroundColor = .lightGray
        
        
    }
    
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = view.frame
        
        
    }
}

