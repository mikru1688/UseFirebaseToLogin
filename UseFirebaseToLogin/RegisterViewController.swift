//
//  RegisterViewController.swift
//  UseFireBaseToLogin
//
//  Created by Frank.Chen on 2017/2/4.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var emailTxtFld: UITextField!
    var passwordTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "註冊"
        self.view.backgroundColor = UIColor(colorLiteralRed: 255, green: 230, blue: 0, alpha: 1)
        
        // 生成email輸入框
        self.emailTxtFld = UITextField()
        self.emailTxtFld.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: self.view.frame.size.height / 2 - 15 - 10 - 64, width: self.view.frame.size.width / 2, height: 30)
        self.emailTxtFld.font = UIFont.systemFont(ofSize: 20)
        self.emailTxtFld.backgroundColor = UIColor.white
        self.emailTxtFld.textAlignment = NSTextAlignment.left
        self.emailTxtFld.clearButtonMode = UITextFieldViewMode.unlessEditing // 清除按鈕
        self.emailTxtFld.placeholder = "請輸入email"
        self.view.addSubview(self.emailTxtFld)
        
        // 生成密碼輸入框
        self.passwordTxtFld = UITextField()
        self.passwordTxtFld.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: emailTxtFld.frame.origin.y + emailTxtFld.frame.size.height + 20, width: self.view.frame.size.width / 2, height: 30)
        self.passwordTxtFld.font = UIFont.systemFont(ofSize: 20)
        self.passwordTxtFld.backgroundColor = UIColor.white
        self.passwordTxtFld.textAlignment = NSTextAlignment.left
        self.passwordTxtFld.clearButtonMode = UITextFieldViewMode.unlessEditing // 清除按鈕
        self.passwordTxtFld.placeholder = "請輸入密碼"
        self.view.addSubview(self.passwordTxtFld)
        
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
        
        // 註冊tab事件，點選瑩幕任一處可關閉瑩幕小鍵盤
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    // MARK: - Callback
    // ---------------------------------------------------------------------
    // 註冊
    func onClickRegister(_ sender: UIButton) {
        
    }
    
    // 關閉瑩幕小鍵盤
    func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    // 提示錯誤訊息
    func showMsg() {
        let alertController = UIAlertController(title: "提示", message: "請輸入email或密碼", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "確定", style: .default, handler: nil)
        
        alertController.addAction(cancel)
        
        self.present(alertController, animated: true, completion: nil)
    }
}
