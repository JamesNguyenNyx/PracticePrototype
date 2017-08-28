//
//  LoginViewController.swift
//  Camelia
//
//  Created by James Nguyen on 2017/08/26.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet fileprivate weak var userName: BaseTextField?
    @IBOutlet fileprivate weak var password: BaseTextField?
    @IBOutlet fileprivate weak var errorLabel: BaseLabel?
    @IBOutlet fileprivate weak var loginButton: BaseButton?

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
    
    @IBAction func actionLoginToApp(_ sender: UIButton) {
        userName?.jitter()
        password?.jitter()
        loginButton?.jitter()
        errorLabel?.flash()
        errorLabel?.jitter()
    }
    

}
