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
        email.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        email.textColor = .white
        email.borderStyle = .roundedRect
        email.placeholder = "Email"
        email.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        email.textAlignment = .center
        email.returnKeyType = .next
        email.keyboardType = .emailAddress
        email.clipsToBounds = true
        email.layer.cornerRadius = 12
        email.layer.borderWidth = 1.0
        email.layer.borderColor = UIColor.white.cgColor
        return email
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        password.textColor = .white
        password.borderStyle = .roundedRect
        password.placeholder = "Password"
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        password.isSecureTextEntry = true
        password.textAlignment = .center
        password.layer.cornerRadius = 12
        password.layer.borderWidth = 1.0
        password.layer.borderColor = UIColor.white.cgColor
        return password
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageBackground)
        addSubview(titleLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        constrainImageBackground()
        constrainTitleLabel()
        constrainEmailTextField()
        constrainPasswordTextField()
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
}
