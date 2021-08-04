//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Veronika Torushko on 01.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    private let indent = 16
    
    var separatePost: PostModel? {
        didSet {
            postNameLabel.text = separatePost?.name
            postPicture.image = separatePost?.image
            postDescriptionLabel.text = separatePost?.description
            postInteractionLikes.text = "Likes: " + String(separatePost?.likes ?? 0)
            postInteractionViews.text = "Views: " + String(separatePost?.views ?? 0)
            
        }
    }
    
    
    private let postNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 2
        return label
    }()
    
    
    private let postPicture: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .black
        return image
    }()
    
    
    private let postDescriptionLabel: UILabel = {
        let description = UILabel()
        description.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        description.textColor = .systemGray
        description.numberOfLines = 0
        return description
    }()
        
    
    private let postInteractionLikes: UILabel = {
        let likes = UILabel()
        likes.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        likes.textColor = .black
        return likes
    }()
    
    private let postInteractionViews: UILabel = {
        let views = UILabel()
        views.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        views.textColor = .black
        views.textAlignment = .right
        return views
        
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUIElements()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setupUIElements() {
        contentView.addSubview(postNameLabel)
        contentView.addSubview(postPicture)
        contentView.addSubview(postDescriptionLabel)
        contentView.addSubview(postInteractionLikes)
        contentView.addSubview(postInteractionViews)
        
        postNameLabel.translatesAutoresizingMaskIntoConstraints = false
        postNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: CGFloat(indent)).isActive = true
        postNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: CGFloat(indent)).isActive = true
        postNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: CGFloat( -indent)).isActive = true
        
        postPicture.translatesAutoresizingMaskIntoConstraints = false
        postPicture.topAnchor.constraint(equalTo: postNameLabel.bottomAnchor).isActive = true
        postPicture.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        postPicture.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
//        postPicture.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        postPicture.heightAnchor.constraint(equalTo: postPicture.widthAnchor).isActive = true
        

        postDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        postDescriptionLabel.topAnchor.constraint(equalTo: postPicture.bottomAnchor, constant: CGFloat(indent)).isActive = true
        postDescriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: CGFloat(indent)).isActive = true
        postDescriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: CGFloat( -indent)).isActive = true


        postInteractionLikes.translatesAutoresizingMaskIntoConstraints = false
        postInteractionLikes.topAnchor.constraint(equalTo: postDescriptionLabel.bottomAnchor, constant: CGFloat(indent)).isActive = true
        postInteractionLikes.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: CGFloat(indent)).isActive = true
        postInteractionLikes.trailingAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        postInteractionLikes.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -CGFloat(indent)).isActive = true

        postInteractionViews.translatesAutoresizingMaskIntoConstraints = false
        postInteractionViews.topAnchor.constraint(equalTo: postDescriptionLabel.bottomAnchor, constant: CGFloat(indent)).isActive = true
        postInteractionViews.leadingAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        postInteractionViews.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -CGFloat(indent)).isActive = true
        postInteractionViews.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -CGFloat(indent)).isActive = true
        
    }
    
}

//
//extension UIView {
//    func addSubviews(_ subviews: UIView...) {
//        subviews.forEach { addSubview($0) }
//    }
//}
