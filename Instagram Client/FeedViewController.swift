//
//  ViewController.swift
//  Instagram Client
//
//  Created by Max on 12/07/2020.
//  Copyright © 2020 Max. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    let tableViewFeed: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = true
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        createFeed()
    }

    func createFeed(){
        view.addSubview(tableViewFeed)
        tableViewFeed.translatesAutoresizingMaskIntoConstraints = false
        tableViewFeed.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        tableViewFeed.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        tableViewFeed.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        tableViewFeed.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }
}

