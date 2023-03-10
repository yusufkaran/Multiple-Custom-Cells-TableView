//
//  CodedTableViewCell.swift
//  Multiple Custom Cells TableView
//
//  Created by Yusuf Karan on 5.03.2023.
//

import UIKit
import SnapKit
//String(describing: CodedTableViewCell.self)
class CodedTableViewCell: UITableViewCell {
    
    static let identifier = "CodedTableViewCell"
    
    private let myName: UILabel = {
        let nameLabel = UILabel()
        return nameLabel
    }()
    
    private let myNickname: UILabel = {
        let nickLabel = UILabel()
        return nickLabel
    }()
    
    private let myDate: UILabel = {
        let dateLabel = UILabel()
        return dateLabel
    }()
    
    private let myTweetText: UILabel = {
        let tweetLabel = UILabel()
        return tweetLabel
    }()
    
    private let myProfilePic: UIImageView = {
        let profilePic = UIImageView()
        return profilePic
    }()
        
    private let myViewNumber: UILabel = {
        let viewNumberLabel = UILabel()
        return viewNumberLabel
    }()
    
    private let myViewText: UILabel = {
        let viewLabel = UILabel()
        return viewLabel
    }()
        
    private let mySeparator: UILabel = {
        let separatorLine = UILabel()
        separatorLine.frame = CGRect(x: 0, y: 0, width: 386, height: 0)
        separatorLine.backgroundColor = .white
         
        var stroke = UIView()
        stroke.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.center = separatorLine.center
        separatorLine.addSubview(stroke)
        separatorLine.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.layer.borderWidth = 0.33
        stroke.layer.borderColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1).cgColor
        return separatorLine
    }()
    
    private let myRetweetNumber: UILabel = {
        let retweetNumber = UILabel()
        return retweetNumber
    }()
    
    private let myRetweetText: UILabel = {
        let retweetText = UILabel()
        return retweetText
    }()
    
    private let myQuoteNumber: UILabel = {
        let QuoteNumber = UILabel()
        return QuoteNumber
    }()
    
    private let myQuoteText: UILabel = {
        let QuoteText = UILabel()
        return QuoteText
    }()
    
    private let myLikeNumber: UILabel = {
        let likeNumber = UILabel()
        return likeNumber
    }()
    
    private let myLikeText: UILabel = {
        let likeText = UILabel()
        return likeText
    }()
    
    private let mySeparator2: UILabel = {
        let separatorLine = UILabel()
        separatorLine.frame = CGRect(x: 0, y: 0, width: 386, height: 0)
        separatorLine.backgroundColor = .white
         
        var stroke = UIView()
        stroke.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.center = separatorLine.center
        separatorLine.addSubview(stroke)
        separatorLine.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.layer.borderWidth = 0.33
        stroke.layer.borderColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1).cgColor
        return separatorLine
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
    
    private let myBookmarkIcon: UIImageView = {
        let bookmarkIcon = UIImageView()
        return bookmarkIcon
    }()
    
    private let myShareIcon: UIImageView = {
        let shareIcon = UIImageView()
        return shareIcon
    }()
    
        
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    private func setupUI() {
        contentView.addSubview(myName)
        contentView.addSubview(myProfilePic)
        contentView.addSubview(myTweetText)
        contentView.addSubview(myNickname)
        contentView.addSubview(myDate)
        contentView.addSubview(myViewNumber)
        contentView.addSubview(myViewText)
        contentView.addSubview(mySeparator)
        contentView.addSubview(myRetweetNumber)
        contentView.addSubview(myRetweetText)
        contentView.addSubview(myQuoteText)
        contentView.addSubview(myQuoteNumber)
        contentView.addSubview(myLikeText)
        contentView.addSubview(myLikeNumber)
        contentView.addSubview(mySeparator2)
        contentView.addSubview(myCommentIcon)
        contentView.addSubview(myRetweetIcon)
        contentView.addSubview(myLikeIcon)
        contentView.addSubview(myShareIcon)
        contentView.addSubview(myBookmarkIcon)
        
        myProfilePic.layer.masksToBounds = true
        myProfilePic.layer.cornerRadius = 25.0
        
        myProfilePic.snp.makeConstraints { make in
            make.height.width.equalTo(55)
            //make.centerY.equalToSuperview()
            make.top.equalToSuperview().offset(42)
            make.leading.equalToSuperview().offset(20)
        }
        
        myName.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(49)
            make.leading.equalToSuperview().offset(83)
        }
        
        myNickname.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(83)
            make.top.equalToSuperview().offset(68)
        }
        
        myTweetText.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalToSuperview().offset(120)
        }
        
        myDate.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(myTweetText.snp.bottom).offset(37)
            make.bottom.equalToSuperview().offset(-103)
        }
        
        myViewNumber.snp.makeConstraints { make in
            make.top.equalTo(myTweetText.snp.bottom).offset(37)
            make.leading.equalTo(myDate.snp.trailing).offset(5)
        }
        
        myViewText.snp.makeConstraints { make in
            make.top.equalTo(myTweetText.snp.bottom).offset(37)
            make.leading.equalTo(myViewNumber.snp.trailing).offset(4)
        }
        
        
        mySeparator.snp.makeConstraints { make in
            make.height.equalTo(0)
            make.leading.equalToSuperview().offset(14)
            make.trailing.equalToSuperview().offset(-14)
            make.top.equalTo(myDate.snp.bottom).offset(15)
        }
        
        myRetweetNumber.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(myDate.snp.bottom).offset(28)
        }
        
        myRetweetText.snp.makeConstraints { make in
            make.leading.equalTo(myRetweetNumber.snp.trailing).offset(4)
            make.top.equalTo(myDate.snp.bottom).offset(28)
        }
        
        myQuoteNumber.snp.makeConstraints { make in
            make.leading.equalTo(myRetweetText.snp.trailing).offset(8)
            make.top.equalTo(myDate.snp.bottom).offset(28)
        }
        
        myQuoteText.snp.makeConstraints { make in
            make.leading.equalTo(myQuoteNumber.snp.trailing).offset(4)
            make.top.equalTo(myDate.snp.bottom).offset(28)
        }
        
        myLikeNumber.snp.makeConstraints { make in
            make.leading.equalTo(myQuoteText.snp.trailing).offset(8)
            make.top.equalTo(myDate.snp.bottom).offset(28)
        }
        
        myLikeText.snp.makeConstraints { make in
            make.leading.equalTo(myLikeNumber.snp.trailing).offset(4)
            make.top.equalTo(myDate.snp.bottom).offset(28)
        }
        
        mySeparator2.snp.makeConstraints { make in
            make.height.equalTo(0)
            make.leading.equalToSuperview().offset(14)
            make.trailing.equalToSuperview().offset(-14)
            make.top.equalTo(myLikeText.snp.bottom).offset(12)
        }
        
        myCommentIcon.snp.makeConstraints { make in
            make.height.width.equalTo(18)
            make.leading.equalToSuperview().offset(45)
            make.top.equalTo(mySeparator2.snp.bottom).offset(13)
        }
        
        myRetweetIcon.snp.makeConstraints { make in
            make.height.equalTo(15)
            make.width.equalTo(22)
            make.leading.equalTo(myCommentIcon.snp.trailing).offset(54)
            make.top.equalTo(mySeparator2.snp.bottom).offset(13)
        }
        
        myLikeIcon.snp.makeConstraints { make in
            make.height.width.equalTo(18)
            make.leading.equalTo(myRetweetIcon.snp.trailing).offset(54)
            make.top.equalTo(mySeparator2.snp.bottom).offset(13)
        }
        
        myBookmarkIcon.snp.makeConstraints { make in
            make.height.width.equalTo(18)
            make.leading.equalTo(myLikeIcon.snp.trailing).offset(54)
            make.top.equalTo(mySeparator2.snp.bottom).offset(13)
        }
        
        myShareIcon.snp.makeConstraints { make in
            make.height.width.equalTo(18)
            make.leading.equalTo(myBookmarkIcon.snp.trailing).offset(54)
            make.top.equalTo(mySeparator2.snp.bottom).offset(13)
        }
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure() {
        
        // ProfilePicture
        myProfilePic.image = UIImage(named: "image2")
        myProfilePic.contentMode = .scaleAspectFill
        
        // Name & Surname
        myName.text = "Yusuf Karan"
        myName.textAlignment = .center
        myName.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        myName.font = .systemFont(ofSize: 16, weight: .bold)
        
        
        // Nickname
        myNickname.text = "@yusufkaranx"
        myNickname.textAlignment = .center
        myNickname.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        myNickname.font = .systemFont(ofSize: 16, weight: .medium)
         
        // Tweet Text
        myTweetText.text = "14 Mayis'ta secimleri kazanacagiz. Erdogan hukumeti bitecek. Topluma refah gelecek. Herkes 14 Mayis'ta sandiklara gitmeli, oy kullanmali. Bir oy bir oydur."
        myTweetText.textAlignment = .left
        myTweetText.font = .systemFont(ofSize: 18, weight: .light)
        myTweetText.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        myTweetText.numberOfLines = 0
        
        // Date Text
        myDate.text = "09:05 · 14.05.2023 ·"
        myDate.textAlignment = .left
        myDate.font = .systemFont(ofSize: 16, weight: .light)
        myDate.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)

        // View Number
        myViewNumber.text = "24,7K"
        myViewNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        myViewNumber.font = .systemFont(ofSize: 16, weight: .bold)
        
        // View Text
        myViewText.text = "Views"
        myViewText.textAlignment = .left
        myViewText.font = .systemFont(ofSize: 16, weight: .light)
        myViewText.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        
        // Retweet Text
        myRetweetNumber.text = "89"
        myRetweetNumber.font = UIFont(name: "SFProText-Semibold", size: 16)
        myRetweetNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        myRetweetNumber.font = .systemFont(ofSize: 16, weight: .bold)
 
        // Retweet Label
        myRetweetText.text = "Retweets"
        myRetweetText.font = UIFont(name: "SFProT", size: 16)
        myRetweetText.font = .systemFont(ofSize: 16, weight: .light)
        myRetweetText.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        
        // Quote Number
        myQuoteNumber.text = "1"
        myQuoteNumber.font = UIFont(name: "SFProText-Semibold", size: 16)
        myQuoteNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        myQuoteNumber.font = .systemFont(ofSize: 16, weight: .bold)
 
        // Quote Label
        myQuoteText.text = "Quote"
        myQuoteText.font = UIFont(name: "SFProT", size: 16)
        myQuoteText.font = .systemFont(ofSize: 16, weight: .light)
        myQuoteText.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        
        // Like Number
        myLikeNumber.text = "933"
        myLikeNumber.font = UIFont(name: "SFProText-Semibold", size: 16)
        myLikeNumber.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        myLikeNumber.font = .systemFont(ofSize: 16, weight: .bold)
 
        // Like Text
        myLikeText.text = "Likes"
        myLikeText.font = UIFont(name: "SFProT", size: 16)
        myLikeText.font = .systemFont(ofSize: 16, weight: .light)
        myLikeText.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        
        // Comment Icon
        myCommentIcon.image = UIImage(named: "comment")
        myCommentIcon.contentMode = .scaleAspectFill
        
        // Retweet Icon
        myRetweetIcon.image = UIImage(named: "retweet")
        myRetweetIcon.contentMode = .scaleAspectFill
        
        // Like Icon
        myLikeIcon.image = UIImage(named: "like")
        myLikeIcon.contentMode = .scaleAspectFill
        
        // Bookmark Icon
        myBookmarkIcon.image = UIImage(named: "bookmark")
        myBookmarkIcon.contentMode = .scaleAspectFill
        
        // Share Icon
        myShareIcon.image = UIImage(named: "share")
        myShareIcon.contentMode = .scaleAspectFill
    }
    

}
