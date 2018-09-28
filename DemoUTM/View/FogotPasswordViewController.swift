//
//  FogotPasswordViewController.swift
//  DemoUTM
//
//  Created by Babie Xcode on 9/28/18.
//  Copyright © 2018 Quynhlx. All rights reserved.
//

import UIKit

class FogotPasswordViewController: UIViewController {
    @IBOutlet weak var mEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBackTouched(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onGetNewPasswordTouched(_ sender: Any) {
        if !isValidEmail(testStr: mEmail.text!) {
            let alert = UIAlertController(title: "Thông báo", message: "Vui lòng nhập đúng Email", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: { (action) in
                self.mEmail.becomeFirstResponder()
            }))
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Thông báo", message: "Chúng tôi đã gửi 1 Email tới địa chỉ trên. Vui lòng kiểm tra!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: { (action) in
               self.dismiss(animated: true, completion: nil)
            }))
             present(alert, animated: true, completion: nil)
        }
    }
    
    
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
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
