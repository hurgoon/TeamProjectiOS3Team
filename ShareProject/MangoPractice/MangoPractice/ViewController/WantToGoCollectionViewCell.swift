//
//  WantToGoCollectionViewCell.swift
//  MangoPractice
//
//  Created by jinsunkim on 13/12/2018.
//  Copyright © 2018 Bernard Hur. All rights reserved.
//

import UIKit

class WantToGoCollectionViewCell: UICollectionViewCell {
    let restaurantPicture = UIImageView()
    let rankingName = UILabel()
    let restaurantLocation = UILabel()
    let viewFeedCount = UILabel()
    let gradePoint = UILabel()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    private func configureUI() {
        rankingName.font = UIFont(name: "Helvetica", size: CGFloat(15))
        rankingName.textColor = #colorLiteral(red: 0.25, green: 0.25, blue: 0.25, alpha: 1)
        gradePoint.textColor = .orange
        gradePoint.font = UIFont(name: "Helvetica", size: CGFloat(20))
        restaurantLocation.font = UIFont(name: "Helvetica", size: CGFloat(10))
        restaurantLocation.textColor = .gray
        viewFeedCount.font = UIFont(name: "Helvetica", size: CGFloat(10))
        viewFeedCount.textColor = .gray
        
        self.contentView.addSubview(restaurantPicture)
        self.contentView.addSubview(rankingName)
        self.contentView.addSubview(restaurantLocation)
        self.contentView.addSubview(viewFeedCount)
        self.contentView.addSubview(gradePoint)
        
        // Autolayout
        restaurantPicture.snp.makeConstraints { (m) in
            m.top.leading.trailing.equalToSuperview()
            m.height.equalTo(self.contentView.snp.height).multipliedBy(0.7)
        }
        rankingName.snp.makeConstraints { (m) in
            m.top.equalTo(restaurantPicture.snp.bottom).offset(5)
            m.leading.equalTo(self.contentView)
            m.trailing.equalTo(self.contentView).multipliedBy(0.8)
        }
        gradePoint.snp.makeConstraints { (m) in
            m.top.equalTo(restaurantPicture.snp.bottom)
            m.trailing.equalTo(self.contentView)
        }
        restaurantLocation.snp.makeConstraints { (m) in
            m.top.equalTo(rankingName.snp.bottom).offset(3)
            m.leading.equalTo(self.contentView)
        }
        viewFeedCount.snp.makeConstraints { (m) in
            m.top.equalTo(restaurantLocation.snp.bottom).offset(3)
            m.leading.equalTo(self.contentView)
        }
    }
}

