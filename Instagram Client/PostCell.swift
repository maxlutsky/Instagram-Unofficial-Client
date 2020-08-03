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

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(postAuthor)
        postAuthor.topAnchor.constraint(equalTo: topAnchor).isActive = true
        postAuthor.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 9/10).isActive = true
        postAuthor.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        postAuthor.heightAnchor.constraint(equalToConstant: 30).isActive = true

        addSubview(postImage)
        postImage.topAnchor.constraint(equalTo: postAuthor.bottomAnchor).isActive = true
        postImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        postImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        postImage.heightAnchor.constraint(equalTo: widthAnchor).isActive = true
        
        addSubview(postDescriptionLabel)
        postDescriptionLabel.topAnchor.constraint(equalTo: postImage.bottomAnchor).isActive = true
        postDescriptionLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 9/10).isActive = true
        postDescriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        postDescriptionLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        postDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        
     }
     
     required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
     }
     
 
}
