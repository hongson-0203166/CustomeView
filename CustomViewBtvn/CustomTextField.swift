//
//  CustomTextField.swift
//  CustomViewBtvn
//
//  Created by Phạm Hồng Sơn on 23/10/2023.
//

import UIKit

class CustomTextField: UIView {
    let lableTextField: UILabel = {
        let lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        lable.textColor = UIColor(red: 130/255, green: 143/255, blue: 156/255, alpha: 1)
        lable.textAlignment = .left
        return lable
    }()
    
    let contentTextField: UITextField = {
        let text = UITextField()
        text.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        text.textAlignment = .left
        text.layer.cornerRadius = 10
        text.backgroundColor = UIColor(red: 241/255, green: 243/255, blue: 252/255, alpha: 1)
        text.layer.masksToBounds = true
        text.becomeFirstResponder()
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        setlable()
        setcontentTextField()
    }
    
    func setlable(){
        self.addSubview(lableTextField)
        lableTextField.snp.makeConstraints { make in
            make.leading.equalTo(self.snp.leading).offset(5)
            make.top.equalTo(self.snp.top).offset(5)
            make.height.equalTo(20)
            make.width.equalTo(170)
        }
    }
    func setcontentTextField(){
        self.addSubview(contentTextField)
        contentTextField.snp.makeConstraints { make in
            make.leading.equalTo(self.snp.leading).offset(5)
            make.top.equalTo(lableTextField.snp.bottom).offset(5)
            make.height.equalTo(70)
            make.centerX.equalTo(self)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
