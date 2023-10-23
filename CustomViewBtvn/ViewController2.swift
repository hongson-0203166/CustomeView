//
//  ViewController2.swift
//  CustomViewBtvn
//
//  Created by Phạm Hồng Sơn on 23/10/2023.
//

import UIKit

class ViewController2: UIViewController {
    deinit {
        print("view is deinited")
    }
    let avatarInforImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "anh")
        image.layer.cornerRadius = 15
        image.layer.masksToBounds = true
        return image
    }()
    let cameraImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = UIColor(red: 217/255, green: 223/255, blue: 249/255, alpha: 1)
        image.image = UIImage(systemName: "camera.fill")?.withTintColor(UIColor(red: 125/255, green: 140/255, blue: 241/255, alpha: 1), renderingMode: .alwaysOriginal)
        image.layer.cornerRadius = 10
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.masksToBounds = true
        return image
    }()
    
    
    //gender
    
    let genderMaleLable: UILabel = {
        let lable = UILabel()
        lable.text = "Gender"
        lable.textAlignment = .left
        lable.textColor = UIColor(red: 130/255, green: 143/255, blue: 156/255, alpha: 1)
        return lable
    }()
    
    let genderMaleButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 241/255, green: 243/255, blue: 252/255, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    
    let genderFemaleButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 241/255, green: 243/255, blue: 252/255, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    let lableMale : UILabel = {
        let lable  = UILabel()
        lable.textColor = UIColor(red: 130/255, green: 143/255, blue: 156/255, alpha: 1)
        lable.text = "Male"
        return lable
    }()
    
    
    let lableFeMale : UILabel = {
        let lable  = UILabel()
        lable.textColor = UIColor(red: 130/255, green: 143/255, blue: 156/255, alpha: 1)
        lable.text = "Female"
        return lable
    }()
    
    let imgViewbuttonMale : UIView = {
        let view  = UIView()
        view.backgroundColor = .blue
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.white.cgColor
        return view
    }()
    
    let imgViewbuttonFemale : UIView = {
        let view  = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.white.cgColor
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print(852 / 7)
        setupImage()
        setTextField()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let current = touch.location(in: avatarInforImage)
            dismiss(animated: true)
        }
    }
//    @objc func tapdismiss(){
//        dismiss(animated: true)
//    }
    func setupImage(){
        view.addSubview(avatarInforImage)
        avatarInforImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.snp.top).offset(65)
            make.height.width.equalTo(110)
        }
        
//        let guesture1 = UITapGestureRecognizer(target: self, action: #selector(tapdismiss))
//        avatarInforImage.addGestureRecognizer(guesture1)
        
        view.addSubview(cameraImage)
        cameraImage.snp.makeConstraints { make in
            make.top.equalTo(avatarInforImage.snp.bottom).offset(-30)
            make.leading.equalTo(avatarInforImage.snp.trailing).offset(-30)
            make.height.width.equalTo(45)
        }
    }
    
    
    func setTextField(){
        let yourNameView = CustomTextField()
        view.addSubview(yourNameView)
        yourNameView.snp.makeConstraints { make in
            make.leading.equalTo(0)
            make.top.equalTo(cameraImage.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalTo(121)
        }
        yourNameView.lableTextField.text = "Your Name"
        yourNameView.contentTextField.placeholder = "Name"
        
        
        //
        //DateofBirth
        let DateofBirth = CustomTextField()
        view.addSubview(DateofBirth)
        DateofBirth.snp.makeConstraints { make in
            make.leading.equalTo(0)
            make.top.equalTo(yourNameView.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalTo(121)
        }
        DateofBirth.lableTextField.text = "Date of Birth"
        DateofBirth.contentTextField.placeholder = "24 December 1999"
        
        //
        //Your Job
        let yourJobview = CustomTextField()
        view.addSubview(yourJobview)
        yourJobview.snp.makeConstraints { make in
            make.leading.equalTo(0)
            make.top.equalTo(DateofBirth.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalTo(121)
        }
        yourJobview.lableTextField.text = "Your Job"
        yourJobview.contentTextField.placeholder = "Successor Designer"
        
        
        //Monthly Income
        let incomeView = CustomTextField()
        view.addSubview(incomeView)
        incomeView.snp.makeConstraints { make in
            make.leading.equalTo(0)
            make.top.equalTo(yourJobview.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalTo(121)
        }
        incomeView.lableTextField.text = "Monthly Income"
        incomeView.contentTextField.placeholder = "$500 - $3000 / year"
        
        
        //Gender
        
        view.addSubview(genderMaleLable)
        genderMaleLable.snp.makeConstraints { make in
            make.leading.equalTo(5)
            make.top.equalTo(incomeView.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalTo(20)
        }
        
        view.addSubview(genderMaleButton)
        genderMaleButton.snp.makeConstraints { make in
            make.leading.equalTo(10)
            make.top.equalTo(genderMaleLable.snp.bottom).offset(5)
            make.width.equalTo(170)
            make.height.equalTo(65)
        }
        
        view.addSubview(genderFemaleButton)
        genderFemaleButton.snp.makeConstraints { make in
            make.leading.equalTo(genderMaleButton.snp.trailing).offset(30)
            make.top.equalTo(genderMaleLable.snp.bottom).offset(5)
            make.width.equalTo(170)
            make.height.equalTo(65)
        }
        
        
        
        genderMaleButton.addSubview(lableMale)
        lableMale.snp.makeConstraints { make in
            make.leading.equalTo(genderMaleButton.snp.leading).offset(60)
            make.centerY.equalTo(genderMaleButton.snp.centerY)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }
        genderMaleLable.addSubview(imgViewbuttonMale)
        imgViewbuttonMale.snp.makeConstraints { make in
            make.leading.equalTo(genderMaleButton.snp.leading).offset(35)
            make.centerY.equalTo(genderMaleButton.snp.centerY)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        
        genderFemaleButton.addSubview(lableFeMale)
        lableFeMale.snp.makeConstraints { make in
            make.leading.equalTo(genderFemaleButton.snp.leading).offset(60)
            make.centerY.equalTo(genderFemaleButton.snp.centerY)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }
        
        genderFemaleButton.addSubview(imgViewbuttonFemale)
        imgViewbuttonFemale.snp.makeConstraints { make in
            make.leading.equalTo(genderFemaleButton.snp.leading).offset(35)
            make.centerY.equalTo(genderFemaleButton.snp.centerY)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
    }
    
//    @objc func tapdismiss(){
//        dismiss(animated: true)
//    }
}
