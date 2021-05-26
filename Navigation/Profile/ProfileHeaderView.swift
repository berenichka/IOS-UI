//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Veronika Torushko on 18.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    // MARK: constants and variables
    private let indent = 16.0
    private let showStatusButton = UIButton()
    private let name = UILabel()
    private var statusText = UITextView()
    private let profilePicture = UIImageView()
    private let textEdit = UITextField()
    private var editedStatusText = String() 
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUIelements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupUIframes()
    }
    
    
    // MARK: method add frames of elements
    func setupUIframes() {
        profilePicture.frame = CGRect(x: self.safeAreaInsets.left + CGFloat(indent), y: self.safeAreaInsets.top + CGFloat(indent), width: 110, height: 110)
        profilePicture.layer.cornerRadius = profilePicture.frame.size.height / 2

        name.frame = CGRect(x: profilePicture.frame.maxX + CGFloat(indent), y: self.safeAreaInsets.top + 27, width: self.frame.width - self.safeAreaInsets.right - self.safeAreaInsets.left - (profilePicture.frame.width + CGFloat(indent)) - CGFloat(indent) * 2, height: 18)
        
        statusText.frame = CGRect(x: name.frame.minX, y: name.frame.maxY + CGFloat(indent) * 2, width: self.frame.width - self.safeAreaInsets.right - self.safeAreaInsets.left - (profilePicture.frame.width + CGFloat(indent)) - CGFloat(indent) * 2, height: 16)
        
        textEdit.frame = CGRect(x: name.frame.minX, y: statusText.frame.maxY + CGFloat(indent), width: self.frame.width - self.safeAreaInsets.right - self.safeAreaInsets.left - (profilePicture.frame.width + CGFloat(indent)) - CGFloat(indent) * 2, height: 40)
        
        showStatusButton.frame = CGRect(x: self.safeAreaInsets.left + CGFloat(indent), y: textEdit.frame.maxY + CGFloat(indent), width: self.frame.width - self.safeAreaInsets.right - self.safeAreaInsets.left - CGFloat(indent) * 2, height: 50)
    
    }
    
    // MARK: method add elements
    func setupUIelements () {
        
        addSubview(profilePicture)
        profilePicture.layer.borderWidth = 3
        profilePicture.layer.borderColor = UIColor.white.cgColor
        profilePicture.clipsToBounds = true
        profilePicture.image = UIImage(named: "myPhoto.png")

        addSubview(name)
        name.text = "Sad Kitten"
        name.textColor = .black
        name.font = UIFont.boldSystemFont(ofSize: 18)
        
        addSubview(showStatusButton)
        showStatusButton.backgroundColor = .systemBlue
        showStatusButton.setTitle("Set status", for: .normal)
        showStatusButton.setTitleColor(.white, for: .normal)
        showStatusButton.layer.cornerRadius = 15
        showStatusButton.layer.shadowColor = UIColor.black.cgColor
        showStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        showStatusButton.layer.shadowOpacity = 0.7
        showStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

        addSubview(statusText)
        statusText.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusText.text = "Creating my status"
        statusText.textColor = .gray
        statusText.sizeToFit()
        statusText.backgroundColor = .none
        statusText.textContainerInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        statusText.textContainer.lineFragmentPadding = 0
        
        addSubview(textEdit)
        textEdit.backgroundColor = .white
        textEdit.layer.cornerRadius = 12
        textEdit.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textEdit.frame.height))
        textEdit.leftViewMode = .always
        textEdit.layer.borderWidth = 1
        textEdit.layer.borderColor = UIColor.black.cgColor
        textEdit.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textEdit.textColor = .black
        textEdit.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        
    }
    
    // MARK: methods for selector
    @objc func buttonPressed() {
        statusText.text = editedStatusText
        self.endEditing(true) //добавила скрытие клавиатуры после ввода текста и нажатия кнопки
    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        editedStatusText = textEdit.text ?? "Please add your status"
    }
    
}


