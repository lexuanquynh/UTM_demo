//
//  LoginViewController.swift
//  DemoUTM
//
//  Created by Babie Xcode on 9/28/18.
//  Copyright © 2018 Quynhlx. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var mUsername: UITextField!
    @IBOutlet weak var mPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    private func checkValid() -> Bool {
        var result = true
        var message = ""
        
        if mUsername.text?.count == 0 {
            message = "Vui lòng nhập tên đăng nhập"
            result = false
            mUsername.becomeFirstResponder()
        } else  if mPassword.text?.count == 0 {
            message = "Vui lòng nhập mật khẩu"
            result = false
            mPassword.becomeFirstResponder()
        }
        
        if result == false {
            let alert = UIAlertController(title: "Thông báo", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
                
        return result
    }
    
    @IBAction func onLoginTouched(_ sender: Any) {
        if !checkValid() {
            return
        }
        
        if mUsername.text == "admin" && mPassword.text == "123456" {
            let alert = UIAlertController(title: "Thông báo", message: "Bạn đăng nhập thành công!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Thông báo", message: "Bạn đăng nhập thất bại!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func onForgotPasswordTouched(_ sender: Any) {
        
    }
    
    
    @IBAction func onCreateAccountTouched(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
