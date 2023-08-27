//
//  SignUpVC.swift
//  SignInApp1.0
//
//  Created by Aliaksandr Yashchuk on 8/26/23.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var email2Tf: UITextField!
    @IBOutlet weak var error2Lbl: UILabel!{
        didSet {error2Lbl.isEnabled = true}
    }
    
    @IBOutlet weak var nameTf2: UITextField!
    
    @IBOutlet weak var passwordTf2: UITextField!
    @IBOutlet weak var colorsCollect: UIStackView!
    @IBOutlet weak var descriptionLbl: UILabel!{
        didSet {descriptionLbl.isEnabled = true}
    }
    
    
    @IBOutlet weak var confirmPassTf: UITextField!
    @IBOutlet weak var error21Lbl: UIStackView!{
        didSet {error21Lbl.isHidden = false}
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    


}
