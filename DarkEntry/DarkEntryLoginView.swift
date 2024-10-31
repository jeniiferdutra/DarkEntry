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
        email.textColor = .white
        email.placeholder = "Email"
        email.attributedPlaceholder = NSAttributedString(
            string: "Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        email.textAlignment = .center
        email.returnKeyType = .next
        email.keyboardType = .emailAddress
        email.clipsToBounds = true
        return email
    }()
    
    lazy var lineEmail: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
       return line
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.textColor = .white
        password.placeholder = "Password"
        password.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        password.isSecureTextEntry = true
        password.textAlignment = .center
        password.layer.borderColor = UIColor.white.cgColor
        return password
    }()
    
    lazy var linePassword: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
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
    
    lazy var lineForgotPassword: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
    }()
    
    lazy var textLabel: UILabel = {
        let txt = UILabel()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = .white
        txt.font = UIFont.systemFont(ofSize: 12)
        txt.text = "Or login with"
        return txt
    }()
    
    lazy var lineTextOne: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
    }()
    
    lazy var lineTextTwo: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageBackground)
        addSubview(titleLabel)
        addSubview(emailTextField)
        addSubview(lineEmail)
        addSubview(passwordTextField)
        addSubview(linePassword)
        addSubview(buttonLogin)
        addSubview(forgotPassword)
        addSubview(lineForgotPassword)
        addSubview(textLabel)
        addSubview(lineTextOne)
        addSubview(lineTextTwo)
        constrainImageBackground()
        constrainTitleLabel()
        constrainEmailTextField()
        constrainLineEmail()
        constrainPasswordTextField()
        constrainlinePassword()
        constrainButtonLogin()
        constrainForgotPassword()
        constrainLineForgotPassword()
        constrainTextLabel()
        constrainLineTextOne()
        constrainLineTextTwo()
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
            emailTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 200),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            emailTextField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func constrainLineEmail() {
        NSLayoutConstraint.activate([
            lineEmail.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 1),
            lineEmail.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lineEmail.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            lineEmail.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainPasswordTextField() {
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func constrainlinePassword() {
        NSLayoutConstraint.activate([
            linePassword.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 1),
            linePassword.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            linePassword.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            linePassword.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainButtonLogin() {
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            buttonLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110),
            buttonLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -110),
            buttonLogin.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func constrainForgotPassword() {
        NSLayoutConstraint.activate([
            forgotPassword.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 10),
            forgotPassword.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            forgotPassword.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -100),
            forgotPassword.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func constrainLineForgotPassword() {
        NSLayoutConstraint.activate([
            lineForgotPassword.topAnchor.constraint(equalTo: forgotPassword.bottomAnchor, constant: -12),
            lineForgotPassword.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 138),
            lineForgotPassword.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -138),
            lineForgotPassword.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainTextLabel() {
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: lineForgotPassword.bottomAnchor, constant: 40),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
    
    func constrainLineTextOne() {
        NSLayoutConstraint.activate([
            lineTextOne.topAnchor.constraint(equalTo: forgotPassword.bottomAnchor, constant: 37),
            lineTextOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 250),
            lineTextOne.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            lineTextOne.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainLineTextTwo() {
        NSLayoutConstraint.activate([
            lineTextTwo.topAnchor.constraint(equalTo: forgotPassword.bottomAnchor, constant: 37),
            lineTextTwo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            lineTextTwo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -250),
            lineTextTwo.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
