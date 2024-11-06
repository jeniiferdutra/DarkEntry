//
//  DarkEntryRegisterView.swift
//  DarkEntry
//
//  Created by Jenifer Rocha on 04/11/24.
//

import UIKit

protocol DarkEntryRegisterDelegate: AnyObject {
    func tappedLoginBtn()
}

class DarkEntryRegisterView: UIView {
    
    private weak var delegate: DarkEntryRegisterDelegate?
    
    public func delegate(delegate: DarkEntryRegisterDelegate?) {
        self.delegate = delegate
    }
    
    
    lazy var backgroundImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "backgroundRegister")
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
    
    lazy var nameTextField: UITextField = {
        let name = UITextField()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.placeholder = "Full Name"
        name.attributedPlaceholder = NSAttributedString(
            string: "Full Name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        name.textAlignment = .center
        name.returnKeyType = .next
        name.textColor = .white
        name.clipsToBounds = true
        return name
    }()
    
    lazy var lineName: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no
        email.placeholder = "Email"
        email.attributedPlaceholder = NSAttributedString(
            string: "Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        email.textAlignment = .center
        email.returnKeyType = .next
        email.textColor = .white
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
        let pass = UITextField()
        pass.translatesAutoresizingMaskIntoConstraints = false
        pass.placeholder = "Password"
        pass.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        pass.textAlignment = .center
        pass.isSecureTextEntry = true
        pass.returnKeyType = .next
        pass.textColor = .white
        pass.clipsToBounds = true
        return pass
    }()
    
    lazy var linePassword: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
    }()
    
    lazy var confirmPasswordTextField: UITextField = {
        let pass = UITextField()
        pass.translatesAutoresizingMaskIntoConstraints = false
        pass.placeholder = "Password"
        pass.attributedPlaceholder = NSAttributedString(
            string: "Confirm Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        pass.textAlignment = .center
        pass.returnKeyType = .next
        pass.isSecureTextEntry = true
        pass.textColor = .white
        pass.clipsToBounds = true
        return pass
    }()
    
    lazy var lineConfirmPassword: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
    }()
    
    lazy var buttonRegister: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Register Now", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.borderColor = UIColor.yellow.cgColor
        btn.clipsToBounds = true
        btn.layer.borderWidth = 1.0
        btn.layer.cornerRadius = 20
        return btn
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
    
    lazy var facebookImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "facebook")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var twitterImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "twitter")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var googleImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "google")
        image.contentMode = .scaleAspectFit
       return image
    }()
    
    lazy var loginLabel: UILabel = {
        let txt = UILabel()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.font = UIFont.systemFont(ofSize: 15)
        txt.textColor = .white
        txt.text = "Already have an account?"
        return txt
    }()
    
    lazy var loginButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Login now", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.setTitleColor(.yellow, for: .normal)
        btn.clipsToBounds = true
        btn.addTarget(self, action: #selector(tappedLoginBtn), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedLoginBtn() {
        delegate?.tappedLoginBtn()
    }
    
    lazy var lineLogin: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .yellow
        return line
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        addSubview(titleLabel)
        addSubview(nameTextField)
        addSubview(lineName)
        addSubview(emailTextField)
        addSubview(lineEmail)
        addSubview(passwordTextField)
        addSubview(linePassword)
        addSubview(confirmPasswordTextField)
        addSubview(lineConfirmPassword)
        addSubview(buttonRegister)
        addSubview(textLabel)
        addSubview(lineTextOne)
        addSubview(lineTextTwo)
        addSubview(facebookImage)
        addSubview(twitterImage)
        addSubview(googleImage)
        addSubview(loginLabel)
        addSubview(loginButton)
        addSubview(lineLogin)
        constrainBackgroundImage()
        constrainTitleLabel()
        constrainNameTextField()
        constrainLineName()
        constrainEmailTextField()
        constrainLineEmail()
        constrainPassword()
        constrainLinePassword()
        constrainConfirmPassword()
        constrainLineConfirmPassword()
        constrainRegisterButton()
        constrainTextLabel()
        constrainLineTextOne()
        constrainLineTextTwo()
        constrainFacebook()
        constrainTwitter()
        constrainGoogle()
        constrainLoginLabel()
        constrainLoginButton()
        constrainLineLogin()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func constrainBackgroundImage() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func constrainTitleLabel() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 80),
            titleLabel.heightAnchor.constraint(equalToConstant: 90),
            titleLabel.widthAnchor.constraint(equalToConstant: 230),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func constrainNameTextField() {
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 120),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            nameTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func constrainLineName() {
        NSLayoutConstraint.activate([
            lineName.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: -4),
            lineName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lineName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            lineName.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainEmailTextField() {
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: lineName.bottomAnchor, constant: 30),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            emailTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func constrainLineEmail() {
        NSLayoutConstraint.activate([
            lineEmail.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: -4),
            lineEmail.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lineEmail.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            lineEmail.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainPassword() {
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: lineEmail.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func constrainLinePassword() {
        NSLayoutConstraint.activate([
            linePassword.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: -4),
            linePassword.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            linePassword.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            linePassword.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainConfirmPassword() {
        NSLayoutConstraint.activate([
            confirmPasswordTextField.topAnchor.constraint(equalTo: linePassword.bottomAnchor, constant: 30),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func constrainLineConfirmPassword() {
        NSLayoutConstraint.activate([
            lineConfirmPassword.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: -4),
            lineConfirmPassword.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lineConfirmPassword.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            lineConfirmPassword.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainRegisterButton() {
        NSLayoutConstraint.activate([
            buttonRegister.topAnchor.constraint(equalTo: lineConfirmPassword.bottomAnchor, constant: 40),
            buttonRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 110),
            buttonRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -110),
            buttonRegister.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func constrainTextLabel() {
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: buttonRegister.bottomAnchor, constant: 40),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
    
    func constrainLineTextOne() {
        NSLayoutConstraint.activate([
            lineTextOne.topAnchor.constraint(equalTo: buttonRegister.bottomAnchor, constant: 47),
            lineTextOne.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 250),
            lineTextOne.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            lineTextOne.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainLineTextTwo() {
        NSLayoutConstraint.activate([
            lineTextTwo.topAnchor.constraint(equalTo: buttonRegister.bottomAnchor, constant: 47),
            lineTextTwo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lineTextTwo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -250),
            lineTextTwo.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func constrainFacebook() {
        NSLayoutConstraint.activate([
            facebookImage.topAnchor.constraint(equalTo: lineTextTwo.bottomAnchor, constant: 25),
            facebookImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            facebookImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200),
            ])
    }
    
    func constrainTwitter() {
        NSLayoutConstraint.activate([
            twitterImage.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 20),
            twitterImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            twitterImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
        ])
    }
    
    func constrainGoogle() {
        NSLayoutConstraint.activate([
            googleImage.topAnchor.constraint(equalTo: lineTextOne.bottomAnchor, constant: 25),
            googleImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 215),
            googleImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
    
    func constrainLoginLabel() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: facebookImage.bottomAnchor, constant: 68),
            loginLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 65),
            loginLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        ])
    }
    
    func constrainLoginButton() {
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: googleImage.bottomAnchor, constant: 62),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 190),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -9)
        ])
    }
    
    func constrainLineLogin() {
        NSLayoutConstraint.activate([
            lineLogin.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: -4),
            lineLogin.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 250),
            lineLogin.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -68),
            lineLogin.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
