//
//  LogInViewController.swift
//  Navigation
//
//  Created by Veronika Torushko on 30.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

protocol MovetoProfileProtocol {
    func move()
}

class LogInViewController: UIViewController, MovetoProfileProtocol {
    @objc func move() {
        if let profileViewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profile") as? ProfileViewController {
        self.navigationController?.pushViewController(profileViewController, animated: true)
        }
    }
    
    private let loginView = UIView()
    private let scrollView = UIScrollView()
    private let appIcon = UIImageView()
    private let loginDataField = UIView()
    private let emailTextField = UITextField()
    private let separator = UIView()
    private let passwordTextField = UITextField()
    private let loginButton = UIButton()
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        view.addSubview(scrollView)
        scrollView.addSubview(loginView)
        self.loginView.addSubview(appIcon)
        self.loginView.addSubview(loginDataField)
        self.loginView.addSubview(emailTextField)
        self.loginView.addSubview(separator)
        self.loginView.addSubview(passwordTextField)
        self.loginView.addSubview(loginButton)
        configureViews()
        
        
    }
    
    
    func configureViews() {
        weak var _: MovetoProfileProtocol?
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        loginView.translatesAutoresizingMaskIntoConstraints = false
        appIcon.translatesAutoresizingMaskIntoConstraints = false
        loginDataField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        separator.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        loginView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        loginView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        loginView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        loginView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        loginView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        appIcon.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 120).isActive = true
        appIcon.centerXAnchor.constraint(equalTo: loginView.centerXAnchor).isActive = true
        appIcon.heightAnchor.constraint(equalToConstant: 100).isActive = true
        appIcon.widthAnchor.constraint(equalToConstant: 100).isActive = true
        appIcon.image = UIImage(named: "logo.png")
        
        loginDataField.topAnchor.constraint(equalTo: appIcon.bottomAnchor, constant: 120).isActive = true
        loginDataField.leadingAnchor.constraint(equalTo: loginView.leadingAnchor, constant: 16).isActive = true
        loginDataField.trailingAnchor.constraint(equalTo: loginView.trailingAnchor, constant: -16).isActive = true
        loginDataField.heightAnchor.constraint(equalToConstant: 100).isActive = true
        loginDataField.backgroundColor = .systemBlue
        loginDataField.backgroundColor = .systemGray6
        loginDataField.layer.cornerRadius = 10
        loginDataField.layer.borderWidth = 0.5
        loginDataField.layer.borderColor = UIColor.lightGray.cgColor
        
        separator.centerXAnchor.constraint(equalTo: loginDataField.centerXAnchor).isActive = true
        separator.centerYAnchor.constraint(equalTo: loginDataField.centerYAnchor).isActive = true
        separator.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        separator.widthAnchor.constraint(equalTo: loginDataField.widthAnchor).isActive = true
        separator.backgroundColor = .lightGray
        
        emailTextField.backgroundColor = .none
        emailTextField.centerXAnchor.constraint(equalTo: separator.centerXAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: loginDataField.topAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 49).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: loginDataField.widthAnchor, constant: -10).isActive = true
        emailTextField.textColor = .black
        emailTextField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        emailTextField.tintColor = UIColor(named: "accentColor")
        emailTextField.placeholder = "Email or phone number"
        emailTextField.autocapitalizationType = .none
        
        passwordTextField.backgroundColor = .none
        passwordTextField.centerXAnchor.constraint(equalTo: separator.centerXAnchor).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: loginDataField.bottomAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 49).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: loginDataField.widthAnchor, constant: -10).isActive = true
        passwordTextField.textColor = .black
        passwordTextField.tintColor = UIColor(named: "accentColor")
        passwordTextField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        passwordTextField.isSecureTextEntry = true
        passwordTextField.placeholder = "Password"
        
        loginButton.topAnchor.constraint(equalTo: loginDataField.bottomAnchor, constant: 16).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor, constant: 16).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor, constant: -16).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: loginView.bottomAnchor).isActive = true
        loginButton.backgroundColor = .systemBlue
        loginButton.setTitle("Log in", for: .normal)
        loginButton.addTarget(self, action: #selector(move), for: .touchUpInside)
        loginButton.backgroundColor = UIColor(patternImage: UIImage(named: "blue_pixel.png")!).withAlphaComponent(1)
        loginButton.layer.cornerRadius = 10
        loginButton.setTitleColor(.white, for: .normal)
        
        if loginButton.state == .normal {
            loginButton.backgroundColor = UIColor(patternImage: UIImage(named: "blue_pixel.png")!).withAlphaComponent(1)
            }else {
                loginButton.backgroundColor = UIColor(patternImage: UIImage(named: "blue_pixel.png")!).withAlphaComponent(0.8)
            }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc fileprivate func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            
            scrollView.contentInset.bottom = keyboardSize.height
            scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        }
    }
    
    @objc fileprivate func keyboardWillHide(notification: NSNotification) {
        scrollView.contentInset.bottom = .zero
        scrollView.verticalScrollIndicatorInsets = .zero
    }
    
}
