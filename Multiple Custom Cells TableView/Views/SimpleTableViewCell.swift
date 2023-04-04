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
    
    enum labelColor {
        case boldColor
        case lightColor
        
        var uiColorCode: UIColor {
            switch self {
            case .boldColor:
                return UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
            case .lightColor:
                return UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
            }
        }
    }
    
    enum fontTemp {
        case sBold
        case sMedium
        case sLight
        case bLight
        
        var uiFontCode: UIFont {
            switch self {
            case .sBold:
                return .systemFont(ofSize: 16, weight: .bold)
            case .sMedium:
                return .systemFont(ofSize: 16, weight: .medium)
            case .sLight:
                return .systemFont(ofSize: 16, weight: .light)
            case .bLight:
                return .systemFont(ofSize: 18, weight: .light)
            }
        }
    }
    
    private let profilePic: UIImageView = {
        let profilePic = UIImageView()
        profilePic.image = UIImage(named: "image2")
        profilePic.contentMode = .scaleAspectFill
        return profilePic
    }()
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Arda Turan"
        nameLabel.textAlignment = .center
        nameLabel.textColor = labelColor.boldColor.uiColorCode
        nameLabel.font = fontTemp.sBold.uiFontCode
        return nameLabel
    }()
    
    private let nickLabel: UILabel = {
        let nickLabel = UILabel()
        nickLabel.text = "@ardaturan77"
        nickLabel.textAlignment = .center
        nickLabel.textColor = labelColor.lightColor.uiColorCode
        nickLabel.font = fontTemp.sMedium.uiFontCode
        return nickLabel
    }()
    
    private let tweetlabel: UILabel = {
        let tweetlabel = UILabel()
        tweetlabel.text = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit"
        tweetlabel.textAlignment = .left
        tweetlabel.font = fontTemp.bLight.uiFontCode
        tweetlabel.textColor = labelColor.boldColor.uiColorCode
        tweetlabel.numberOfLines = 0
        return tweetlabel
    }()
    
    private let commentIcon: UIImageView = {
        let commentIcon = UIImageView()
        commentIcon.image = UIImage(named: "comment")
        commentIcon.contentMode = .scaleAspectFit
        return commentIcon
    }()
    
    private let retweetIcon: UIImageView = {
        let retweetIcon = UIImageView()
        retweetIcon.image = UIImage(named: "retweet")
        retweetIcon.contentMode = .scaleAspectFit
        return retweetIcon
    }()
    
    private let likeIcon: UIImageView = {
        let likeIcon = UIImageView()
        likeIcon.image = UIImage(named: "like")
        likeIcon.contentMode = .scaleAspectFit
        return likeIcon
    }()
    
    private let shareIcon: UIImageView = {
        let shareIcon = UIImageView()
        shareIcon.image = UIImage(named: "share")
        shareIcon.contentMode = .scaleAspectFit
        return shareIcon
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    private func setupUI(){
        contentView.addSubview(profilePic)
        contentView.addSubview(nameLabel)
        contentView.addSubview(nickLabel)
        contentView.addSubview(tweetlabel)
        contentView.addSubview(commentIcon)
        contentView.addSubview(retweetIcon)
        contentView.addSubview(likeIcon)
        contentView.addSubview(shareIcon)
        
        profilePic.layer.masksToBounds = true
        profilePic.layer.cornerRadius = 25.0
        
        profilePic.snp.makeConstraints { make in
            make.height.width.equalTo(55)
            make.leading.equalTo(contentView.snp.leading).offset(20)
            make.top.equalTo(contentView.snp.top).offset(12)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(10)
            make.leading.equalTo(profilePic.snp.trailing).offset(8)
        }
        
        nickLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(10)
            make.leading.equalTo(nameLabel.snp.trailing).offset(5)
        }
        
        tweetlabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            make.leading.equalTo(profilePic.snp.trailing).offset(8)
            make.trailing.equalTo(contentView.snp.trailing).offset(-24)
            make.bottom.equalTo(contentView.snp.bottom).offset(-50)
        }
        
        commentIcon.snp.makeConstraints { make in
            make.top.equalTo(tweetlabel.snp.bottom).offset(4)
            make.bottom.equalTo(contentView.snp.bottom).offset(-4)
            make.leading.equalTo(tweetlabel.snp.leading)
            make.height.width.equalTo(15)
        }
        
        retweetIcon.snp.makeConstraints { make in
            make.top.equalTo(tweetlabel.snp.bottom).offset(4)
            make.bottom.equalTo(contentView.snp.bottom).offset(-4)
            make.leading.equalTo(commentIcon.snp.trailing).offset(65)
            make.height.equalTo(14)
            make.width.equalTo(18)
        }
        
        likeIcon.snp.makeConstraints { make in
            make.top.equalTo(tweetlabel.snp.bottom).offset(4)
            make.bottom.equalTo(contentView.snp.bottom).offset(-4)
            make.height.width.equalTo(16)
            make.leading.equalTo(retweetIcon.snp.trailing).offset(65)
        }
        
        shareIcon.snp.makeConstraints { make in
            make.top.equalTo(tweetlabel.snp.bottom).offset(4)
            make.bottom.equalTo(contentView.snp.bottom).offset(-4)
            make.leading.equalTo(likeIcon.snp.trailing).offset(65)
            make.height.width.equalTo(15)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


