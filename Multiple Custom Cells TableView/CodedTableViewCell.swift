//
//  CodedTableViewCell.swift
//  Multiple Custom Cells TableView
//
//  Created by Yusuf Karan on 5.03.2023.
//

import UIKit
import SnapKit

class CodedTableViewCell: UITableViewCell {
    
    static let identifier = "CodedTableViewCell"
    
    
    
    private let myLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let myTitle: UILabel = {
        let title = UILabel()
        return title
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    public func configure() {
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        contentView.addSubview(myTitle)
        
        myLabel.text = "Ahaa Calisiyor"
        myLabel.textAlignment = .center
        myLabel.textColor = .red
        myLabel.font = .systemFont(ofSize: 20, weight: .bold)
        
        myTitle.text = "One - Code Warriors /n2. Tech Titans /nData Ninja"
        myTitle.textAlignment = .center
        myTitle.font = .systemFont(ofSize: 15, weight: .medium)
        
        myImageView.image = UIImage(named: "image2")
        myImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        myImageView.frame = CGRect(x: 5, y:5, width: 140, height: 150)
//        myLabel.frame = CGRect(x: 105, y: 5, width: contentView.frame.size.width-105, height: 100)
//
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
        
        myImageView.snp.makeConstraints { make in
            make.width.equalTo(140)
            make.height.equalTo(140)
            make.centerY.equalTo(contentView)
            make.leading.equalTo(contentView.snp.leading).offset(5)
        }
        
        myLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(15)
            make.leading.equalTo(myImageView.snp.trailing).offset(40)
        }
        
        myTitle.snp.makeConstraints { make in
            make.bottom.equalTo(contentView.snp.bottom).offset(-10)
            make.trailing.equalTo(contentView.snp.trailing).offset(-10)
            make.leading.equalTo(myImageView.snp.trailing).offset(10)
            
        }
    }
    

}
