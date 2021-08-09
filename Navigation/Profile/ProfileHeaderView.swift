//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Veronika Torushko on 18.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit
import SnapKit

class ProfileHeaderView: UITableViewHeaderFooterView {
    
    static let reuseId = String(describing: ProfileHeaderView.self)
    
    private let profileHeaderView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    private let avatarImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 55
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.white.cgColor
        view.image = UIImage(named: "myPhoto")
        view.clipsToBounds = true
        return view
    }()
    
    
    private let fullNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Sad Kitten"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    
    private var statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.text = "Creating my status"
        label.textColor = .gray
        label.sizeToFit()
        label.backgroundColor = .lightGray
        return label
    }()
    
    
    private var statusTextField: UITextField = {
        let textField = UITextField()
        let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        textField.backgroundColor = .white
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0)
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.clipsToBounds = true
        textField.layer.borderColor = UIColor.black.cgColor
        textField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textField.textColor = .black
        textField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        return textField
    }()
    
    
    private var setStatusButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    

    
    
    private var editedStatusText = String()
    
    private var postSection = UITableView()
    

    // MARK: methods
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        setupUI()
//    }
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        addSubview(profileHeaderView)
        profileHeaderView.addSubview(avatarImageView)
        profileHeaderView.addSubview(fullNameLabel)
        profileHeaderView.addSubview(statusLabel)
        profileHeaderView.addSubview(statusTextField)
        profileHeaderView.addSubview(setStatusButton)
        
        profileHeaderView.snp.makeConstraints { (make) in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        avatarImageView.snp.makeConstraints { (make) in
            make.width.height.equalTo(110)
            make.leading.top.equalTo(16)
        }
        
        fullNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(27)
            make.leading.equalTo(avatarImageView.snp.trailing).offset(16)
            make.trailing.equalTo(-16)
        }
        
        statusLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(setStatusButton.snp.top).offset(-56)
            make.leading.equalTo(avatarImageView.snp.trailing).offset(16)
            make.height.equalTo(14)
        }
        
        setStatusButton.snp.makeConstraints { (make) in
            make.top.equalTo(avatarImageView.snp.bottom).offset(40)
            make.leading.equalTo(16)
            make.trailing.equalTo(profileHeaderView.snp.trailing).offset(-16)
            make.height.equalTo(50)
        }
        
        statusTextField.snp.makeConstraints { (make) in
            make.top.equalTo(statusLabel.snp.bottom).offset(12)
            make.leading.equalTo(avatarImageView.snp.trailing).offset(16)
            make.height.equalTo(40)
            make.trailing.equalTo(profileHeaderView.snp.trailing).offset(-16)
        }
    }

}
