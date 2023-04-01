//
//  SimpleTableViewCell.swift
//  Multiple Custom Cells TableView
//
//  Created by Yusuf Karan on 5.03.2023.
//

import UIKit
import SnapKit

class SimpleTableViewCell: UITableViewCell {
    
    static let identifier = "SimpleTableViewCell"
    
    private let myProfilePic: UIImageView = {
        let profilePic = UIImageView()
        return profilePic
    }()
    
    private let myNameLabel: UILabel = {
        let nameLabel = UILabel()
        return nameLabel
    }()
    
    private let myNickLabel: UILabel = {
        let nickLabel = UILabel()
        return nickLabel
    }()
    
    private let myTweetLabel: UILabel = {
        let tweetlabel = UILabel()
        return tweetlabel
    }()
    
    private let myCommentIcon: UIImageView = {
        let commentIcon = UIImageView()
        return commentIcon
    }()
    
    private let myRetweetIcon: UIImageView = {
        let retweetIcon = UIImageView()
        return retweetIcon
    }()
    
    private let myLikeIcon: UIImageView = {
        let likeIcon = UIImageView()
        return likeIcon
    }()
    
    private let myShareIcon: UIImageView = {
        let shareIcon = UIImageView()
        return shareIcon
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    private func setupUI(){
        contentView.addSubview(myProfilePic)
        contentView.addSubview(myNameLabel)
        contentView.addSubview(myNickLabel)
        contentView.addSubview(myTweetLabel)
        contentView.addSubview(myCommentIcon)
        contentView.addSubview(myRetweetIcon)
        contentView.addSubview(myLikeIcon)
        contentView.addSubview(myShareIcon)
        
        myProfilePic.layer.masksToBounds = true
        myProfilePic.layer.cornerRadius = 25.0
        
        myProfilePic.snp.makeConstraints { make in
            make.height.width.equalTo(55)
            make.leading.equalTo(contentView.snp.leading).offset(20)
            make.top.equalTo(contentView.snp.top).offset(12)
        }
        
        myNameLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(10)
            make.leading.equalTo(myProfilePic.snp.trailing).offset(8)
        }
        
        myNickLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(10)
            make.leading.equalTo(myNameLabel.snp.trailing).offset(5)
        }
        
        myTweetLabel.snp.makeConstraints { make in
            make.top.equalTo(myNameLabel.snp.bottom).offset(5)
            make.leading.equalTo(myProfilePic.snp.trailing).offset(8)
            make.trailing.equalTo(contentView.snp.trailing).offset(-24)
            make.bottom.equalTo(contentView.snp.bottom).offset(-50)
        }
        
        myCommentIcon.snp.makeConstraints { make in
            make.top.equalTo(myTweetLabel.snp.bottom).offset(4)
            make.bottom.equalTo(contentView.snp.bottom).offset(-4)
            make.leading.equalTo(myTweetLabel.snp.leading)
            make.height.width.equalTo(15)
        }
        
        myRetweetIcon.snp.makeConstraints { make in
            make.top.equalTo(myTweetLabel.snp.bottom).offset(4)
            make.bottom.equalTo(contentView.snp.bottom).offset(-4)
            make.leading.equalTo(myCommentIcon.snp.trailing).offset(65)
            make.height.equalTo(14)
            make.width.equalTo(18)
        }
        
        myLikeIcon.snp.makeConstraints { make in
            make.top.equalTo(myTweetLabel.snp.bottom).offset(4)
            make.bottom.equalTo(contentView.snp.bottom).offset(-4)
            make.height.width.equalTo(16)
            make.leading.equalTo(myRetweetIcon.snp.trailing).offset(65)
        }
        
        myShareIcon.snp.makeConstraints { make in
            make.top.equalTo(myTweetLabel.snp.bottom).offset(4)
            make.bottom.equalTo(contentView.snp.bottom).offset(-4)
            make.leading.equalTo(myLikeIcon.snp.trailing).offset(65)
            make.height.width.equalTo(15)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     public func configure(){
        // Profile Picture
        myProfilePic.image = UIImage(named: "image2")
        myProfilePic.contentMode = .scaleAspectFill
        
        // Name Surname
        myNameLabel.text = "Arda Turan"
        myNameLabel.textAlignment = .center
        myNameLabel.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        myNameLabel.font = .systemFont(ofSize: 16, weight: .bold)
        
        // Nickname
        myNickLabel.text = "@ardaturan77"
        myNickLabel.textAlignment = .center
        myNickLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        myNickLabel.font = .systemFont(ofSize: 16, weight: .medium)
        
        // Tweet Label
        myTweetLabel.text = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit"
        myTweetLabel.textAlignment = .left
        myTweetLabel.font = .systemFont(ofSize: 18, weight: .light)
        myTweetLabel.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        myTweetLabel.numberOfLines = 0
        
        // Comment Icon
        myCommentIcon.image = UIImage(named: "comment")
        myCommentIcon.contentMode = .scaleAspectFit
        
        // Retweet Icon
        myRetweetIcon.image = UIImage(named: "retweet")
        myRetweetIcon.contentMode = .scaleAspectFit
        
        // Like Icon
        myLikeIcon.image = UIImage(named: "like")
        myLikeIcon.contentMode = .scaleAspectFit
        
        // Share Icon
        myShareIcon.image = UIImage(named: "share")
        myShareIcon.contentMode = .scaleAspectFit
        
    }
}


