//
//  ResetViewController.swift
//  UseFireBaseToLogin
//
//  Created by Frank.Chen on 2017/2/4.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class ResetViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "重設密碼"
        self.view.backgroundColor = UIColor(colorLiteralRed: 205, green: 0, blue: 255, alpha: 1)
        
        // 生成email輸入框
        let emailTxtFld: UITextField = UITextField()
        emailTxtFld.frame = CGRect(x: self.view.frame.size.width / 2 / 2, y: self.view.frame.size.height / 2 - 15 - 10 - 64, width: self.view.frame.size.width / 2, height: 30)
        emailTxtFld.font = UIFont.systemFont(ofSize: 20)
        emailTxtFld.backgroundColor = UIColor.white
        emailTxtFld.textAlignment = NSTextAlignment.left
        emailTxtFld.clearButtonMode = UITextFieldViewMode.unlessEditing // 清除按鈕
        emailTxtFld.placeholder = "請輸入email"
        self.view.addSubview(emailTxtFld)
        
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
    }
    
    // 重設密碼
    func onClickRegister(_ sender: UIButton) {
        
    }
    
}
