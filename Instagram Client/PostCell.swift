//
//  PostCell.swift
//  Instagram Client
//
//  Created by Max on 03/08/2020.
//  Copyright © 2020 Max. All rights reserved.
//

import UIKit
class PostCell : UITableViewCell {
 
     var post : Post? {
         didSet {
            postImage.image = post?.postImage
            postAuthor.text = post?.postAuthor
            postDescriptionLabel.text = post?.postDesc
         }
     }
     
     private let postAuthor : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
     }()
    
    private let postImage : UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        return imgView
    }()
     
     private let postDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
     }()
    
    private let likeButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "like"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        return btn
    }()
    
    private let commentButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "comment"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        return btn
    }()
    
    private let saveButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "bookmark"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        return btn
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createCell()
     }
     
    func createCell(){
        postAuthor.translatesAutoresizingMaskIntoConstraints = false
        addSubview(postAuthor)
        NSLayoutConstraint.activate([
            postAuthor.topAnchor.constraint(equalTo: topAnchor),
            postAuthor.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            postAuthor.rightAnchor.constraint(equalTo: rightAnchor),
            postAuthor.heightAnchor.constraint(equalToConstant: 50)
        ])

        postImage.translatesAutoresizingMaskIntoConstraints = false
        addSubview(postImage)
        NSLayoutConstraint.activate([
            postImage.topAnchor.constraint(equalTo: postAuthor.bottomAnchor),
            postImage.leftAnchor.constraint(equalTo: leftAnchor),
            postImage.rightAnchor.constraint(equalTo: rightAnchor),
            postImage.heightAnchor.constraint(equalTo: widthAnchor)
        ])
        
        likeButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(likeButton)
        NSLayoutConstraint.activate([
            likeButton.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 5),
            likeButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            likeButton.widthAnchor.constraint(equalToConstant: 32),
            likeButton.heightAnchor.constraint(equalTo: likeButton.widthAnchor)
        ])
        
        commentButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(commentButton)
        NSLayoutConstraint.activate([
            commentButton.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor),
            commentButton.leftAnchor.constraint(equalTo: likeButton.rightAnchor, constant: 20),
            commentButton.widthAnchor.constraint(equalToConstant: 32),
            commentButton.heightAnchor.constraint(equalTo: commentButton.widthAnchor)
        ])
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(saveButton)
        NSLayoutConstraint.activate([
            saveButton.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor),
            saveButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            saveButton.widthAnchor.constraint(equalToConstant: 32),
            saveButton.heightAnchor.constraint(equalTo: saveButton.widthAnchor)
        ])
        
        postDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(postDescriptionLabel)
        NSLayoutConstraint.activate([
            postDescriptionLabel.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 10),
            postDescriptionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            postDescriptionLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10),
            postDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
    }
    
     required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
     }
}
