//
//  SignUpVC.swift
//  SignInApp1.0
//
//  Created by Aliaksandr Yashchuk on 8/26/23.
//

import UIKit

class SignUpVC: BaseViewController {
  //1
    @IBOutlet weak var email2Tf: UITextField!
    @IBOutlet weak var error2Lbl: UILabel!{
        didSet {error2Lbl.isHidden = true}
    }
  //2
    @IBOutlet weak var name2Tf: UITextField!
  //3
    @IBOutlet weak var passw2Tf: UITextField!
    @IBOutlet weak var error3Lbl: UILabel!{
        didSet {error3Lbl.isHidden = true}
    }
  //4
    @IBOutlet var warningViews: [UIView]!
  //5
    @IBOutlet weak var confTf: UITextField!
    @IBOutlet weak var confLbl: UILabel!{
        didSet {confLbl.isHidden = true}
    }
  //6
    @IBOutlet weak var nextBtn: UIButton!
  //7
    @IBOutlet weak var scrollV: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningViews.forEach {view in view.alpha = 0.1}
        startKeybObserv()
        hideKeybWhenTappedAround()
    }
    
    private func startKeybObserv() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(notification: Notification) {
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]
                                  as? NSValue)?.cgRectValue
        else {
            return
        }
        let contentInsests = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height, right: 0.0)
        scrollV.contentInset = contentInsests
        scrollV.scrollIndicatorInsets = contentInsests
    }
    
    @objc private func keyboardWillHide() {
        let contentInsests = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        scrollV.contentInset = contentInsests
        scrollV.scrollIndicatorInsets = contentInsests
    }
}
