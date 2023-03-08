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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    private func setupUI() {
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        contentView.addSubview(myTitle)
        
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
        
        myImageView.snp.makeConstraints { make in
            make.height.width.equalTo(140)
            //make.centerY.equalToSuperview()
            make.top.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(5)
        }
        
        myLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.leading.equalTo(myImageView.snp.trailing).offset(40)
        }
        
        myTitle.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            make.leading.equalTo(myImageView.snp.trailing).offset(10)
            make.top.equalTo(myImageView.snp.bottom)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure() {
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
    

}
