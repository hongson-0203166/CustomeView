//
//  ViewController.swift
//  CustomViewBtvn
//
//  Created by Phạm Hồng Sơn on 22/10/2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var personView = ItemCustomView()
    
    
    
    let headerView = UIView()
    let lineView:UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        return line
    }()
    
    let lineBodyView:UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        return line
    }()
    
    let avtImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "anh")
        return image
    }()
    
    let nameLable: UILabel = {
        let lable = UILabel()
        lable.textColor = UIColor(red: 65/255, green: 83/255, blue: 104/255, alpha: 1)
        lable.text = "William John Malik"
        lable.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return lable
    }()
    
    let professionLable: UILabel = {
        let lable = UILabel()
        lable.textColor = UIColor(red: 114/255, green: 125/255, blue: 137/255, alpha: 1)
        lable.text = "Agreessive Investor"
        return lable
    }()
    
    let helfButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 237/255, green: 239/255, blue: 253/255, alpha: 1)
        button.layer.cornerRadius = 11
        button.layer.masksToBounds = true
        return button
    }()
    
    let headPhoneImageofButton: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(systemName: "headphones")?.withTintColor(UIColor(red: 121/255, green: 126/255, blue: 222/255, alpha: 1), renderingMode: .alwaysOriginal)
        return image
    }()
    
    let headPhoneLableofButton: UILabel = {
        let lable = UILabel()
        lable.textColor = UIColor(red: 121/255, green: 126/255, blue: 222/255, alpha: 1)
        lable.text = "Fell Free to Ask, We Ready to Help"
        lable.textAlignment = .left
        lable.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return lable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print(view.frame)
        print(852 / 11)
        setHeader()
        setbody()
        
        let tapgusture = UITapGestureRecognizer(target: self, action: #selector(tapGusture))
        personView.addGestureRecognizer(tapgusture)
    }
    @objc func tapGusture(){
        
        let vc2  = ViewController2()
        vc2.modalPresentationStyle = .fullScreen
        present(vc2, animated: true )
    }
    func setHeader(){
        view.addSubview(headerView)
        headerView.snp.makeConstraints { make in
            make.top.leading.equalTo(0)
            make.width.equalToSuperview()
            make.height.equalTo(154)
        }
        
        headerView.addSubview(avtImage)
        avtImage.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.top).offset(55)
            make.height.width.equalTo(75)
            make.leading.equalTo(20)
        }
        
        headerView.addSubview(nameLable)
        nameLable.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.top).offset(65)
            make.height.equalTo(25)
            make.width.equalTo(393 / 2)
            make.leading.equalTo(avtImage.snp.trailing).offset(20)
        }
       
        headerView.addSubview(professionLable)
        professionLable.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.top).offset(95)
            make.height.equalTo(25)
            make.width.equalTo(393 / 2)
            make.leading.equalTo(avtImage.snp.trailing).offset(20)
        }
        
        view.addSubview(lineView)
        lineView.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom)
            make.width.equalToSuperview()
            make.height.equalTo(1)
            make.leading.equalTo(0)
        }
    }
    
    
    func setbody(){
        //personView
        
        view.addSubview(personView)
        personView.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(10)
            make.height.equalTo(77)
            make.width.equalToSuperview()
            make.leading.equalTo(0)
        }
        
        personView.itemImage.image = UIImage(systemName: "person.fill")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        personView.itemLable.text = "Personal Data"
        personView.iconImage.image = UIImage(systemName: "greaterthan")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        
        
        //settingView
        var settingView = ItemCustomView()
        view.addSubview(settingView)
        settingView.snp.makeConstraints { make in
            make.top.equalTo(personView.snp.bottom)
            make.height.equalTo(77)
            make.width.equalToSuperview()
            make.leading.equalTo(0)
        }
        settingView.itemImage.image = UIImage(systemName: "gearshape.fill")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        settingView.itemLable.text = "Settings"
        settingView.iconImage.image = UIImage(systemName: "greaterthan")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        
        //E-statement
        var EstatementView = ItemCustomView()
        view.addSubview(EstatementView)
        EstatementView.snp.makeConstraints { make in
            make.top.equalTo(settingView.snp.bottom)
            make.height.equalTo(77)
            make.width.equalToSuperview()
            make.leading.equalTo(0)
        }
        EstatementView.itemImage.image = UIImage(systemName: "doc.text.fill")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        EstatementView.itemLable.text = "E-Statement"
        EstatementView.iconImage.image = UIImage(systemName: "greaterthan")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        
            //Refferal Code
        var RefferalView = ItemCustomView()
        view.addSubview(RefferalView)
        RefferalView.snp.makeConstraints { make in
            make.top.equalTo(EstatementView.snp.bottom)
            make.height.equalTo(77)
            make.width.equalToSuperview()
            make.leading.equalTo(0)
        }
        RefferalView.itemImage.image = UIImage(systemName: "heart.fill")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        RefferalView.itemLable.text = "Refferal Code"
        RefferalView.iconImage.image = UIImage(systemName: "greaterthan")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        
        //lineView
        view.addSubview(lineBodyView)
        lineBodyView.snp.makeConstraints { make in
            make.top.equalTo(RefferalView.snp.bottom)
            make.width.equalToSuperview()
            make.height.equalTo(1)
            make.leading.equalTo(0)
        }
        
        //FAQs
        var faqView = ItemCustomView()
        view.addSubview(faqView)
        faqView.snp.makeConstraints { make in
            make.top.equalTo(lineBodyView.snp.bottom)
            make.height.equalTo(77)
            make.width.equalToSuperview()
            make.leading.equalTo(0)
        }
        faqView.itemImage.image = UIImage(systemName: "ellipsis.circle.fill")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        faqView.itemLable.text = "FAQs"
        faqView.iconImage.image = UIImage(systemName: "greaterthan")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        
        //Our Handbook
        var hanbookView = ItemCustomView()
        view.addSubview(hanbookView)
        hanbookView.snp.makeConstraints { make in
            make.top.equalTo(faqView.snp.bottom)
            make.height.equalTo(77)
            make.width.equalToSuperview()
            make.leading.equalTo(0)
        }
        hanbookView.itemImage.image = UIImage(systemName: "pencil.line")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        hanbookView.itemLable.text = "Our Handbook"
        hanbookView.iconImage.image = UIImage(systemName: "greaterthan")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        
        //Community
        var comunityView = ItemCustomView()
        view.addSubview(comunityView)
        comunityView.snp.makeConstraints { make in
            make.top.equalTo(hanbookView.snp.bottom)
            make.height.equalTo(77)
            make.width.equalToSuperview()
            make.leading.equalTo(0)
        }
        comunityView.itemImage.image = UIImage(systemName: "person.3.fill")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        comunityView.itemLable.text = "Community"
        comunityView.iconImage.image = UIImage(systemName: "greaterthan")!.withTintColor(UIColor(red: 13/255, green: 38/255, blue: 78/255, alpha: 1), renderingMode: .alwaysOriginal)
        
        
        //footer
        view.addSubview(helfButton)
        helfButton.snp.makeConstraints { make in
            make.top.equalTo(comunityView.snp.bottom)
            make.height.equalTo(100)
            make.leading.equalTo(view.snp.leading).offset(20)
            make.trailing.equalTo(view.snp.trailing).offset(-20)
        }
        
        helfButton.addSubview(headPhoneImageofButton)
        headPhoneImageofButton.snp.makeConstraints { make in
            make.height.width.equalTo(40)
            make.leading.equalTo(helfButton.snp.leading).offset(40)
            make.centerY.equalTo(helfButton.snp.centerY)
        }
        
        helfButton.addSubview(headPhoneLableofButton)
        headPhoneLableofButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(250)
            make.leading.equalTo(headPhoneImageofButton.snp.trailing).offset(20)
            make.centerY.equalTo(helfButton.snp.centerY)
        }
       
    }
    
    
   
}

