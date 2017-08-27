//
//  LoginViewController.swift
//  Camelia
//
//  Created by James Nguyen on 2017/08/26.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.configureView()
    }
    
    fileprivate func configureView() {
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    

}
