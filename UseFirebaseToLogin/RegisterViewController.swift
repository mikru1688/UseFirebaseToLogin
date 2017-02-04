//
//  RegisterViewController.swift
//  UseFireBaseToLogin
//
//  Created by Frank.Chen on 2017/2/4.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "註冊"
        self.view.backgroundColor = UIColor(colorLiteralRed: 255, green: 230, blue: 0, alpha: 1)
        
        // 生成email輸入框
        let emailTxtFld: UITextField = UITextField()
        emailTxtFld.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: self.view.frame.size.height / 2 - 15 - 10 - 64, width: self.view.frame.size.width / 2, height: 30)
        emailTxtFld.font = UIFont.systemFont(ofSize: 20)
        emailTxtFld.backgroundColor = UIColor.white
        emailTxtFld.textAlignment = NSTextAlignment.left
        emailTxtFld.clearButtonMode = UITextFieldViewMode.unlessEditing // 清除按鈕
        emailTxtFld.placeholder = "請輸入email"
        self.view.addSubview(emailTxtFld)
        
        // 生成密碼輸入框
        let passwordTxtFld: UITextField = UITextField()
        passwordTxtFld.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: emailTxtFld.frame.origin.y + emailTxtFld.frame.size.height + 20, width: self.view.frame.size.width / 2, height: 30)
        passwordTxtFld.font = UIFont.systemFont(ofSize: 20)
        passwordTxtFld.backgroundColor = UIColor.white
        passwordTxtFld.textAlignment = NSTextAlignment.left
        passwordTxtFld.clearButtonMode = UITextFieldViewMode.unlessEditing // 清除按鈕
        passwordTxtFld.placeholder = "請輸入密碼"
        self.view.addSubview(passwordTxtFld)
        
        // 生成註冊按鈕
        let registerBtn: UIButton = UIButton()
        registerBtn.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: passwordTxtFld.frame.origin.y + passwordTxtFld.frame.size.height + 20, width: self.view.frame.size.width / 2, height: 30)
        registerBtn.titleLabel?.font = UIFont.systemFont(ofSize: registerBtn.frame.height * 0.8)
        registerBtn.setTitle("註冊", for: .normal)
        registerBtn.setTitleColor(UIColor.white, for: .normal)
        registerBtn.layer.cornerRadius = 10
        registerBtn.backgroundColor = UIColor.lightGray
        registerBtn.addTarget(self, action: #selector(RegisterViewController.onClickRegister(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(registerBtn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // 註冊
    func onClickRegister(_ sender: UIButton) {
        
    }
    
}
