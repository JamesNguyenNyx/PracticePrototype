//
//  MainViewController.swift
//  Tuberose
//
//  Created by James Nguyen on 2017/08/21.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit
import CoreData

class MainViewController: BaseViewController {
    
    @IBOutlet fileprivate weak var tableView: UITableView?
    
    fileprivate var modelView = MainViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureMainView()
        self.configureNavigation()
    }
}

//MARK: FilePrivate Configure
extension MainViewController {
    
    fileprivate func configureMainView() {
        self.title = "Camelia"
        self.configureTableView()
    }
    
    fileprivate func configureTableView() {
        self.tableView?.dataSource = modelView
        self.tableView?.delegate = modelView
        tableView?.estimatedRowHeight = 100
        tableView?.tableFooterView = UIView()
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.register(MainCell.nib, forCellReuseIdentifier: MainCell.identifier)
    }
    
    fileprivate func configureNavigation() {
        self.backButtonOnNavigationBar(true)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.isTranslucent = true
    }
    




}






