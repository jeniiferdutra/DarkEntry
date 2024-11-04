//
//  ViewControllerRegister.swift
//  DarkEntry
//
//  Created by Jenifer Rocha on 04/11/24.
//

import UIKit

class ViewControllerRegister: UIViewController {
    
    var register: DarkEntryRegisterView?
    
    override func loadView() {
        self.register = DarkEntryRegisterView()
        self.view = self.register
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}
