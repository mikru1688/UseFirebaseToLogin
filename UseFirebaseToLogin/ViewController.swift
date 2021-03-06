//
//  ViewController.swift
//  UseFireBaseToLogin
//
//  Created by Frank.Chen on 2017/2/3.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var emailTxtFld: UITextField!
    var passwordTxtFld: UITextField!
    var registerViewController: RegisterViewController?
    var resetViewController: ResetViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(colorLiteralRed: 0, green: 255, blue: 205, alpha: 1)
        
        // 設定導覽列的抬頭
        self.navigationItem.title = "登入"
        
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
        
        // 生成登入按鈕
        let loginBtn: UIButton = UIButton()
        loginBtn.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: passwordTxtFld.frame.origin.y + passwordTxtFld.frame.size.height + 20, width: self.view.frame.size.width / 2, height: 30)
        loginBtn.titleLabel?.font = UIFont.systemFont(ofSize: loginBtn.frame.height * 0.8)
        loginBtn.setTitle("登入", for: .normal)
        loginBtn.setTitleColor(UIColor.white, for: .normal)
        loginBtn.layer.cornerRadius = 10
        loginBtn.backgroundColor = UIColor.lightGray
        loginBtn.addTarget(self, action: #selector(ViewController.onClickLogin(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(loginBtn)
        
        // 生成註冊按鈕
        let registerBtn: UIButton = UIButton()
        registerBtn.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: self.view.frame.size.height - 20 - 30 - 20 - 30 - 20 - 30, width: self.view.frame.size.width / 2, height: 30)
        registerBtn.titleLabel?.font = UIFont.systemFont(ofSize: registerBtn.frame.height * 0.8)
        registerBtn.setTitle("註冊", for: .normal)
        registerBtn.setTitleColor(UIColor.white, for: .normal)
        registerBtn.layer.cornerRadius = 10
        registerBtn.backgroundColor = UIColor.lightGray
        registerBtn.addTarget(self, action: #selector(ViewController.onClickRegister(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(registerBtn)
        
        // 生成重設密碼按鈕
        let resetBtn: UIButton = UIButton()
        resetBtn.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: registerBtn.frame.origin.y + registerBtn.frame.size.height + 20, width: self.view.frame.size.width / 2, height: 30)
        resetBtn.titleLabel?.font = UIFont.systemFont(ofSize: resetBtn.frame.height * 0.8)
        resetBtn.setTitle("重設密碼", for: .normal)
        resetBtn.setTitleColor(UIColor.white, for: .normal)
        resetBtn.layer.cornerRadius = 10
        resetBtn.backgroundColor = UIColor.lightGray
        resetBtn.addTarget(self, action: #selector(ViewController.onClickReset(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(resetBtn)
        
        // 生成登出按鈕
        let logoutBtn: UIButton = UIButton()
        logoutBtn.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: resetBtn.frame.origin.y + resetBtn.frame.size.height + 20, width: self.view.frame.size.width / 2, height: 30)
        logoutBtn.titleLabel?.font = UIFont.systemFont(ofSize: logoutBtn.frame.height * 0.8)
        logoutBtn.setTitle("登出", for: .normal)
        logoutBtn.setTitleColor(UIColor.white, for: .normal)
        logoutBtn.layer.cornerRadius = 10
        logoutBtn.backgroundColor = UIColor.lightGray
        logoutBtn.addTarget(self, action: #selector(ViewController.onClickLogout(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(logoutBtn)
        
        // 註冊tab事件，點選瑩幕任一處可關閉瑩幕小鍵盤
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    // MARK: - Callback
    // ---------------------------------------------------------------------
    // 登入
    func onClickLogin(_ sender: UIButton) {
        
    }
    
    // 登出
    func onClickLogout(_ sender: UIButton) {
        
    }
    
    // 註冊
    func onClickRegister(_ sender: UIButton) {
        self.registerViewController = RegisterViewController()
        self.navigationController?.pushViewController(self.registerViewController!, animated: true)
    }
    
    // 重設密碼
    func onClickReset(_ sender: UIButton) {
        self.resetViewController = ResetViewController()
        self.navigationController?.pushViewController(self.resetViewController!, animated: true)
    }
    
    // 關閉瑩幕小鍵盤
    func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    // 提示錯誤訊息
    func showMsg(_ message: String) {
        let alertController = UIAlertController(title: "提示", message: message, preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "確定", style: .default, handler: nil)
        
        alertController.addAction(cancel)
        
        self.present(alertController, animated: true, completion: nil)
    }
}
