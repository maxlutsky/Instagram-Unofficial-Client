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
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
     
     private let postDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
     }()
    
    private let likeButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "like"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let commentButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "comment"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let saveButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "bookmark"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(postAuthor)
        postAuthor.topAnchor.constraint(equalTo: topAnchor).isActive = true
        postAuthor.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        postAuthor.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        postAuthor.heightAnchor.constraint(equalToConstant: 50).isActive = true

        addSubview(postImage)
        postImage.topAnchor.constraint(equalTo: postAuthor.bottomAnchor).isActive = true
        postImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        postImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        postImage.heightAnchor.constraint(equalTo: widthAnchor).isActive = true
        
        addSubview(likeButton)
        likeButton.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 5).isActive = true
        likeButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        likeButton.heightAnchor.constraint(equalTo: likeButton.widthAnchor).isActive = true
        
        addSubview(commentButton)
        commentButton.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor).isActive = true
        commentButton.leftAnchor.constraint(equalTo: likeButton.rightAnchor, constant: 20).isActive = true
        commentButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        commentButton.heightAnchor.constraint(equalTo: commentButton.widthAnchor).isActive = true
        
        addSubview(saveButton)
        saveButton.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor).isActive = true
        saveButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        saveButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        saveButton.heightAnchor.constraint(equalTo: saveButton.widthAnchor).isActive = true
        
        addSubview(postDescriptionLabel)
        postDescriptionLabel.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 5).isActive = true
        postDescriptionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        postDescriptionLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        postDescriptionLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        postDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        
     }
     
     required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
     }
     
 
}
