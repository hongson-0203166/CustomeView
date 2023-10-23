//
//  ItemCustomView.swift
//  CustomViewBtvn
//
//  Created by Phạm Hồng Sơn on 22/10/2023.
//

import UIKit
import SnapKit

class ItemCustomView: UIView {
    let itemImage:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.backgroundColor = UIColor(red: 246/255, green: 248/255, blue: 253/255, alpha: 1)
        return img
    }()
    
    let itemLable: UILabel = {
        let lb = UILabel()
        lb.textColor = UIColor(red: 65/255, green: 83/255, blue: 104/255, alpha: 1)
        lb.textAlignment = .left
        lb.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        return lb
    }()
    
    let iconImage : UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        setupItemImage()
        setupItemLable()
        setupItemNext()
    }
    
    func setupItemImage(){
        self.addSubview(itemImage)
        itemImage.snp.makeConstraints { make in
            make.leading.equalTo(self).offset(10)
            make.centerY.equalTo(self)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
    }
    
    func setupItemLable(){
        self.addSubview(itemLable)
        itemLable.snp.makeConstraints { make in
            make.leading.equalTo(itemImage.snp.trailing).offset(20)
            make.centerY.equalTo(self)
            make.height.equalTo(self)
            make.width.equalTo(200)
        }
    }
    func setupItemNext(){
        self.addSubview(iconImage)
        iconImage.snp.makeConstraints { make in
            make.trailing.equalTo(self).offset(-20)
            make.centerY.equalTo(self)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
