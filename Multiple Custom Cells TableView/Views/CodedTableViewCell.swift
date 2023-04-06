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
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Yusuf Karan"
        nameLabel.textAlignment = .center
        nameLabel.textColor = LabelColor.boldColor.uiColorCode
        nameLabel.font = FontTemp.sBold.uiFontCode
        return nameLabel
    }()
    
    private let nickLabel: UILabel = {
        let nickLabel = UILabel()
        nickLabel.text = "@yusufkaranx"
        nickLabel.textAlignment = .center
        nickLabel.textColor = LabelColor.lightColor.uiColorCode
        nickLabel.font = FontTemp.sMedium.uiFontCode
        return nickLabel
    }()
    
    private let dateLabel: UILabel = {
        let dateLabel = UILabel()
        dateLabel.text = "09:05 · 14.05.2023 ·"
        dateLabel.textAlignment = .left
        dateLabel.font = FontTemp.sLight.uiFontCode
        dateLabel.textColor = LabelColor.lightColor.uiColorCode
        return dateLabel
    }()
    
    private let tweetLabel: UILabel = {
        let tweetLabel = UILabel()
        tweetLabel.text = "14 Mayis'ta secimleri kazanacagiz. Erdogan hukumeti bitecek. Topluma refah gelecek. Herkes 14 Mayis'ta sandiklara gitmeli, oy kullanmali. Bir oy bir oydur."
        tweetLabel.textAlignment = .left
        tweetLabel.font = FontTemp.bLight.uiFontCode
        tweetLabel.textColor = LabelColor.boldColor.uiColorCode
        tweetLabel.numberOfLines = 0
        return tweetLabel
    }()
    
    private let profilePic: UIImageView = {
        let profilePic = UIImageView()
        profilePic.image = UIImage(named: "yusuf")
        profilePic.contentMode = .scaleAspectFill
        return profilePic
    }()
        
    private let viewNumberLabel: UILabel = {
        let viewNumberLabel = UILabel()
        viewNumberLabel.text = "24,7K"
        viewNumberLabel.textColor = LabelColor.boldColor.uiColorCode
        viewNumberLabel.font = FontTemp.sBold.uiFontCode
        return viewNumberLabel
    }()
    
    private let viewLabel: UILabel = {
        let viewLabel = UILabel()
        viewLabel.text = "Views"
        viewLabel.textAlignment = .left
        viewLabel.font = .systemFont(ofSize: 16, weight: .light)
        viewLabel.textColor = LabelColor.lightColor.uiColorCode
        return viewLabel
    }()
        
    private let separatorLine: UILabel = {
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
    
    private let retweetNumber: UILabel = {
        let retweetNumber = UILabel()
        retweetNumber.text = "89"
        retweetNumber.textColor = LabelColor.boldColor.uiColorCode
        retweetNumber.font = FontTemp.sBold.uiFontCode
        return retweetNumber
    }()
    
    private let retweetText: UILabel = {
        let retweetText = UILabel()
        retweetText.text = "Retweets"
        retweetText.font = FontTemp.sLight.uiFontCode
        retweetText.textColor = LabelColor.lightColor.uiColorCode
        return retweetText
    }()
    
    private let quoteNumber: UILabel = {
        let quoteNumber = UILabel()
        quoteNumber.text = "1"
        quoteNumber.textColor = LabelColor.boldColor.uiColorCode
        quoteNumber.font = FontTemp.sBold.uiFontCode
        return quoteNumber
    }()
    
    private let quoteText: UILabel = {
        let quoteText = UILabel()
        quoteText.text = "Quote"
        quoteText.font = FontTemp.sLight.uiFontCode
        quoteText.textColor = LabelColor.lightColor.uiColorCode
        return quoteText
    }()
    
    private let likeNumber: UILabel = {
        let likeNumber = UILabel()
        likeNumber.text = "933"
        likeNumber.textColor = LabelColor.boldColor.uiColorCode
        likeNumber.font = FontTemp.sBold.uiFontCode
        return likeNumber
    }()
    
    private let likeText: UILabel = {
        let likeText = UILabel()
        likeText.text = "Likes"
        likeText.font = FontTemp.sLight.uiFontCode
        likeText.textColor = LabelColor.lightColor.uiColorCode
        return likeText
    }()
    
    private let separatorLinee: UILabel = {
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
    
    private let commentIcon: UIImageView = {
        let commentIcon = UIImageView()
        commentIcon.image = UIImage(named: "comment")
        commentIcon.contentMode = .scaleAspectFill
        return commentIcon
    }()
    
    private let retweetIcon: UIImageView = {
        let retweetIcon = UIImageView()
        retweetIcon.image = UIImage(named: "retweet")
        retweetIcon.contentMode = .scaleAspectFill
        return retweetIcon
    }()
    
    private let likeIcon: UIImageView = {
        let likeIcon = UIImageView()
        likeIcon.image = UIImage(named: "like")
        likeIcon.contentMode = .scaleAspectFill
        return likeIcon
    }()
    
    private let bookmarkIcon: UIImageView = {
        let bookmarkIcon = UIImageView()
        bookmarkIcon.image = UIImage(named: "bookmark")
        bookmarkIcon.contentMode = .scaleAspectFill
        return bookmarkIcon
    }()
    
    private let shareIcon: UIImageView = {
        let shareIcon = UIImageView()
        shareIcon.image = UIImage(named: "share")
        shareIcon.contentMode = .scaleAspectFill
        return shareIcon
    }()
    
        
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(profilePic)
        contentView.addSubview(tweetLabel)
        contentView.addSubview(nickLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(viewNumberLabel)
        contentView.addSubview(viewLabel)
        contentView.addSubview(separatorLine)
        contentView.addSubview(retweetNumber)
        contentView.addSubview(retweetText)
        contentView.addSubview(quoteNumber)
        contentView.addSubview(quoteText)
        contentView.addSubview(likeNumber)
        contentView.addSubview(likeText)
        contentView.addSubview(separatorLinee)
        contentView.addSubview(commentIcon)
        contentView.addSubview(retweetIcon)
        contentView.addSubview(likeIcon)
        contentView.addSubview(bookmarkIcon)
        contentView.addSubview(shareIcon)
        
        
        
        profilePic.layer.masksToBounds = true
        profilePic.layer.cornerRadius = 25.0
        
        profilePic.snp.makeConstraints { make in
            make.height.width.equalTo(55)
            //make.centerY.equalToSuperview()
            make.top.equalToSuperview().offset(42)
            make.leading.equalToSuperview().offset(20)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(49)
            make.leading.equalToSuperview().offset(83)
        }
        
        nickLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(83)
            make.top.equalToSuperview().offset(68)
        }
        
        tweetLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalToSuperview().offset(120)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(tweetLabel.snp.bottom).offset(37)
            make.bottom.equalToSuperview().offset(-103)
        }
        
        viewNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(tweetLabel.snp.bottom).offset(37)
            make.leading.equalTo(dateLabel.snp.trailing).offset(5)
        }
        
        viewLabel.snp.makeConstraints { make in
            make.top.equalTo(tweetLabel.snp.bottom).offset(37)
            make.leading.equalTo(viewNumberLabel.snp.trailing).offset(4)
        }
        
        
        separatorLine.snp.makeConstraints { make in
            make.height.equalTo(0)
            make.leading.equalToSuperview().offset(14)
            make.trailing.equalToSuperview().offset(-14)
            make.top.equalTo(dateLabel.snp.bottom).offset(15)
        }
        
        retweetNumber.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(dateLabel.snp.bottom).offset(28)
        }
        
        retweetText.snp.makeConstraints { make in
            make.leading.equalTo(retweetNumber.snp.trailing).offset(4)
            make.top.equalTo(dateLabel.snp.bottom).offset(28)
        }
        
        quoteNumber.snp.makeConstraints { make in
            make.leading.equalTo(retweetText.snp.trailing).offset(8)
            make.top.equalTo(dateLabel.snp.bottom).offset(28)
        }
        
        quoteText.snp.makeConstraints { make in
            make.leading.equalTo(quoteNumber.snp.trailing).offset(4)
            make.top.equalTo(dateLabel.snp.bottom).offset(28)
        }
        
        likeNumber.snp.makeConstraints { make in
            make.leading.equalTo(quoteText.snp.trailing).offset(8)
            make.top.equalTo(dateLabel.snp.bottom).offset(28)
        }
        
        likeText.snp.makeConstraints { make in
            make.leading.equalTo(likeNumber.snp.trailing).offset(4)
            make.top.equalTo(dateLabel.snp.bottom).offset(28)
        }
        
        separatorLinee.snp.makeConstraints { make in
            make.height.equalTo(0)
            make.leading.equalToSuperview().offset(14)
            make.trailing.equalToSuperview().offset(-14)
            make.top.equalTo(likeText.snp.bottom).offset(12)
        }
        
        commentIcon.snp.makeConstraints { make in
            make.height.width.equalTo(18)
            make.leading.equalToSuperview().offset(45)
            make.top.equalTo(separatorLinee.snp.bottom).offset(13)
        }
        
        retweetIcon.snp.makeConstraints { make in
            make.height.equalTo(15)
            make.width.equalTo(22)
            make.leading.equalTo(commentIcon.snp.trailing).offset(54)
            make.top.equalTo(separatorLinee.snp.bottom).offset(13)
        }
        
        likeIcon.snp.makeConstraints { make in
            make.height.width.equalTo(18)
            make.leading.equalTo(retweetIcon.snp.trailing).offset(54)
            make.top.equalTo(separatorLinee.snp.bottom).offset(13)
        }
        
        bookmarkIcon.snp.makeConstraints { make in
            make.height.width.equalTo(18)
            make.leading.equalTo(likeIcon.snp.trailing).offset(54)
            make.top.equalTo(separatorLinee.snp.bottom).offset(13)
        }
        
        shareIcon.snp.makeConstraints { make in
            make.height.width.equalTo(18)
            make.leading.equalTo(bookmarkIcon.snp.trailing).offset(54)
            make.top.equalTo(separatorLinee.snp.bottom).offset(13)
        }
    }
    
    
    
}
