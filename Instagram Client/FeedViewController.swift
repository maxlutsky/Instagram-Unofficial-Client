//
//  ViewController.swift
//  Instagram Client
//
//  Created by Max on 12/07/2020.
//  Copyright © 2020 Max. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    let cellId = "cellId"
    var posts : [Post] = []
    
    let tableViewFeed: UITableView = {
        let tableView = UITableView()
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        setupTableView()
    }

    func setupTableView(){
        createFeed()
        createPostsArray()
        tableViewFeed.register(PostCell.self, forCellReuseIdentifier: cellId)
        tableViewFeed.delegate = self
        tableViewFeed.dataSource = self
        tableViewFeed.reloadData()
    }
    
    func createFeed(){
        tableViewFeed.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableViewFeed)
        NSLayoutConstraint.activate([
            tableViewFeed.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableViewFeed.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            tableViewFeed.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableViewFeed.rightAnchor.constraint(equalTo: self.view.rightAnchor)
        ])
        
    }

    func createPostsArray() {
        for _ in 0...6 {
            posts.append(Post(postAuthor: "joker", postImage: UIImage(named: "sample")!, postDesc: "Are you ready to laugh? "))
        }
    }
}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! PostCell
        let currentLastItem = posts[indexPath.row]
        cell.post = currentLastItem
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
}

