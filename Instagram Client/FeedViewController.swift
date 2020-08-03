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
    var posts : [Post] = [Post]()
    
    let tableViewFeed: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = true
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        createFeed()
        createPostsArray()
        tableViewFeed.register(PostCell.self, forCellReuseIdentifier: cellId)
        
        tableViewFeed.delegate = self
        tableViewFeed.dataSource = self
        tableViewFeed.reloadData()
    }

    func createFeed(){
        view.addSubview(tableViewFeed)
        tableViewFeed.translatesAutoresizingMaskIntoConstraints = false
        tableViewFeed.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        tableViewFeed.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        tableViewFeed.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        tableViewFeed.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }

    func createPostsArray() {
        for _ in 0...6 {
            posts.append(Post(postAuthor: "Glasses", postImage: UIImage(named: "sample")!, postDesc: "This is best Glasses I've ever seen"))
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

