//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Veronika Torushko on 18.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    

    
    @IBOutlet weak var avatarImageView: UIView!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var statusTextField: UITextField!
    
    @IBOutlet weak var setStatusButton: UIButton!
    
    
    private var editedStatusText = String()
    
    private var postSection = UITableView()
    

    // MARK: methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    
    @objc func buttonPressed() {
        statusLabel.text = editedStatusText
        self.endEditing(true)
    }

    @objc func statusTextChanged(_ textField: UITextField) {
        editedStatusText = statusTextField.text ?? "Please add your status"
    }
    
    
    //add elements' properties
    func setupUI () {
        
        //profile picture
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.height / 2
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.clipsToBounds = true
        

//        //profile name
        fullNameLabel.text = "Sad Kitten"
        fullNameLabel.textColor = .black
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 18)

//        //button show status
        setStatusButton.backgroundColor = .systemBlue
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.layer.cornerRadius = 15
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

//        //text status
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.text = "Creating my status"
        statusLabel.textColor = .gray
        statusLabel.sizeToFit()
        statusLabel.backgroundColor = .none

//        //text edit field
        statusTextField.backgroundColor = .white
        statusTextField.layer.cornerRadius = 12
        statusTextField.layer.borderWidth = 1
        statusTextField.clipsToBounds = true
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        statusTextField.textColor = .black
        statusTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        
    }
}


