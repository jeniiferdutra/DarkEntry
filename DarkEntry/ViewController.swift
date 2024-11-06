//
//  ViewController.swift
//  DarkEntry
//
//  Created by Jenifer Rocha on 29/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    var login: DarkEntryLoginView?
    
    override func loadView() {
        login = DarkEntryLoginView()
        view = login
    }
    
    override func viewWillAppear(_ animated: Bool) {
            self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        login?.delegate(delegate: self)
        
    }
}
    
extension ViewController: DarkEntryLoginDelegate {
    func tappedRegisterButton() {
        let register = RegisterVC()
        navigationController?.pushViewController(register, animated: true)
    }
    
    
}

