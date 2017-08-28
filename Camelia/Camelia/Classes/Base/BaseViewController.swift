//
//  BaseViewController.swift
//  Tuberose
//
//  Created by James Nguyen on 2017/08/21.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var show = Bool()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureNavigation()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

//MARK: Extension
extension BaseViewController {
    
    fileprivate func configureNavigation() {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: AppColor.blue]
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Hiragino Sans W3", size: 17.0)!]
    }
    
    func backButtonOnNavigationBar(_ show: Bool) {
        self.show = show
        if show {
            let button = UIButton.init(type: .custom)
            button.setImage(UIImage.init(named: "ic_back.png"), for: UIControlState.normal)
            button.addTarget(self, action:#selector(BaseViewController.showBackButton), for: UIControlEvents.touchUpInside)
            button.frame = CGRect.init(x: 0, y: 0, width: 25, height: 25)
            let barButton = UIBarButtonItem.init(customView: button)
            self.navigationItem.leftBarButtonItem = barButton
        } else {
            self.navigationItem.leftBarButtonItem = nil
        }
    }
    
    @objc fileprivate func showBackButton() {
        if ((self.presentingViewController) != nil) {
            self.dismiss(animated: true, completion: nil)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
