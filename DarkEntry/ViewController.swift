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
        self.login = DarkEntryLoginView()
        self.view = self.login
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

