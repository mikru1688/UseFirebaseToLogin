//
//  ResetViewController.swift
//  UseFireBaseToLogin
//
//  Created by Frank.Chen on 2017/2/4.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class ResetViewController: UIViewController {
    
    var emailTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "重設密碼"
        self.view.backgroundColor = UIColor(colorLiteralRed: 205, green: 0, blue: 255, alpha: 1)
        
        // 生成email輸入框
        self.emailTxtFld = UITextField()
        self.emailTxtFld.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: self.view.frame.size.height / 2 - 15 - 10 - 64, width: self.view.frame.size.width / 2, height: 30)
        self.emailTxtFld.font = UIFont.systemFont(ofSize: 20)
        self.emailTxtFld.backgroundColor = UIColor.white
        self.emailTxtFld.textAlignment = NSTextAlignment.left
        self.emailTxtFld.clearButtonMode = UITextFieldViewMode.unlessEditing // 清除按鈕
        self.emailTxtFld.placeholder = "請輸入email"
        self.view.addSubview(self.emailTxtFld)
        
        // 生成重設按鈕
        let resetBtn: UIButton = UIButton()
        resetBtn.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: emailTxtFld.frame.origin.y + emailTxtFld.frame.size.height + 20, width: self.view.frame.size.width / 2, height: 30)
        resetBtn.titleLabel?.font = UIFont.systemFont(ofSize: resetBtn.frame.height * 0.8)
        resetBtn.setTitle("重設", for: .normal)
        resetBtn.setTitleColor(UIColor.white, for: .normal)
        resetBtn.layer.cornerRadius = 10
        resetBtn.backgroundColor = UIColor.lightGray
        resetBtn.addTarget(self, action: #selector(ResetViewController.onClickRegister(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(resetBtn)
        
        // 註冊tab事件，點選瑩幕任一處可關閉瑩幕小鍵盤
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    // MARK: - Callback
    // ---------------------------------------------------------------------
    // 重設密碼
    func onClickRegister(_ sender: UIButton) {
        
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
