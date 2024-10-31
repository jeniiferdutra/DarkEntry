//
//  DarkEntryLoginView.swift
//  DarkEntry
//
//  Created by Jenifer Rocha on 29/10/24.
//

import UIKit

class DarkEntryLoginView: UIView {
    
    lazy var imageBackground: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "background")
        return img
    }()
    
    lazy var titleLabel: UILabel = {
        let txt = UILabel()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = .white
        txt.font = UIFont.boldSystemFont(ofSize: 30)
        txt.text = "BLACK & WHITE"
        return txt
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no
        email.backgroundColor = .clear
        email.textColor = .white
        email.borderStyle = .none
        email.placeholder = "Email"
        email.attributedPlaceholder = NSAttributedString(
            string: "Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        email.textAlignment = .center
        email.layer.borderColor = UIColor.white.cgColor
        email.returnKeyType = .next
        email.keyboardType = .emailAddress
        email.clipsToBounds = true
        email.layer.cornerRadius = 12
        email.layer.borderWidth = 1.0
        email.layer.borderColor = UIColor.white.cgColor
        
        let bottomLine = CALayer()
            bottomLine.frame = CGRect(x: 0, y: email.frame.height - 1, width: email.frame.width, height: 1)
            bottomLine.backgroundColor = UIColor.white.cgColor
            email.layer.addSublayer(bottomLine)
        return email
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.backgroundColor = UIColor.clear
        password.textColor = .white
        password.placeholder = "Password"
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        password.isSecureTextEntry = true
        password.textAlignment = .center
        password.layer.borderColor = UIColor.white.cgColor
        password.layer.cornerRadius = 12
        password.layer.borderWidth = 1.0
        password.layer.borderColor = UIColor.white.cgColor
        return password
    }()
    
    lazy var buttonLogin: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setTitleColor(.white, for: .normal)
        button.layer.borderColor = UIColor.yellow.cgColor
        button.clipsToBounds = true
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 20
        return button
    }()
    
    lazy var forgotPassword: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot your password?", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageBackground)
        addSubview(titleLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(buttonLogin)
        addSubview(forgotPassword)
        constrainImageBackground()
        constrainTitleLabel()
        constrainEmailTextField()
        constrainPasswordTextField()
        constrainButtonLogin()
        constrainForgotPassword()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func constrainImageBackground() {
        NSLayoutConstraint.activate([
            imageBackground.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageBackground.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageBackground.topAnchor.constraint(equalTo: self.topAnchor),
            imageBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    func constrainTitleLabel() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 90),
            titleLabel.heightAnchor.constraint(equalToConstant: 90),
            titleLabel.widthAnchor.constraint(equalToConstant: 230),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            
        ])
    }
    
    func constrainEmailTextField() {
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 200),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func constrainPasswordTextField() {
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func constrainButtonLogin() {
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 40),
            buttonLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110),
            buttonLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -110),
            buttonLogin.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func constrainForgotPassword() {
        NSLayoutConstraint.activate([
            forgotPassword.topAnchor.constraint(equalTo: self.buttonLogin.bottomAnchor, constant: 10),
            forgotPassword.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            forgotPassword.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -100),
            forgotPassword.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
