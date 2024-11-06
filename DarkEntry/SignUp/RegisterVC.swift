//
//  RegisterVC.swift
//  DarkEntry
//
//  Created by Jenifer Rocha on 04/11/24.
//

import UIKit

class RegisterVC: UIViewController {
        
    var register: DarkEntryRegisterView?
    
    override func loadView() {
        register = DarkEntryRegisterView()
        view = register
    }
    
    override func viewWillAppear(_ animated: Bool) {
            self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        register?.delegate(delegate: self)
    }
}

extension RegisterVC: DarkEntryRegisterDelegate {
    func tappedLoginBtn() {
        let login = ViewController()
        navigationController?.pushViewController(login, animated: true)
    }
}
