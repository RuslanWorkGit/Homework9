//
//  SignUpViewController.swift
//  Lesson9HW
//

//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var contentView: SignUpView!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        subscrubeNotifications()
        
        scrollView.delegate = self
        
        textFieldTypeSetup()
    }
    
}

extension SignUpViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scroll View: vontentOffset: \(scrollView.contentOffset)")
    }
    
    func textFieldTypeSetup() {
        contentView.firstNameTextField.keyboardType = .default
        contentView.lastNameTextField.keyboardType = .default
        contentView.emailNameTextField.keyboardType = .emailAddress
        contentView.passwordTextField.keyboardType = .default
        contentView.passwordTextField.isSecureTextEntry = true
        contentView.confirmPasswordTextField.keyboardType = .default
        contentView.confirmPasswordTextField.isSecureTextEntry = true
        contentView.cvvTextField.keyboardType = .numberPad
        contentView.cvvTextField.isSecureTextEntry = true
        contentView.cardNumberTextField.keyboardType = .numberPad
        contentView.expDateTextField.keyboardType = .numberPad
        contentView.addressTextField.keyboardType = .default
        contentView.countryTextField.keyboardType = .default
        contentView.cityTextField.keyboardType = .default
    }
    

}

