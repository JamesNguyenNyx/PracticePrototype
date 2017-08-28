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
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    func tap(gesture: UITapGestureRecognizer) {
        userName?.resignFirstResponder()
        password?.resignFirstResponder()
    }
    
    fileprivate func configureView() {
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    @IBAction func actionLoginToApp(_ sender: UIButton) {
        if validation() == true {
            let mainVC = MainViewController.init(nibName: MainViewController.className, bundle: nil)
//            let navigation = BaseNavigationController(rootViewController: mainVC)
            self.navigationController?.pushViewController(mainVC, animated: true)
        }
    }
}


//MARK: Fileprivate
extension LoginViewController {
    fileprivate func validation() -> Bool {
        if (userName?.text?.isEmpty)! && (password?.text?.isEmpty)! {
            self.animationValidation()
            return false
        } else if (userName?.text?.isEmpty)! {
            self.animationValidation()
            errorLabel?.text = "Please enter username!"
            return false
        } else if (password?.text?.isEmpty)! {
            self.animationValidation()
            errorLabel?.text = "Please enter password!"
            return false
        }
        return true
    }
    
    fileprivate func animationValidation() {
        userName?.jitter()
        password?.jitter()
        loginButton?.jitter()
        errorLabel?.isHidden = false
        errorLabel?.flash()
        errorLabel?.jitter()
    }
}
