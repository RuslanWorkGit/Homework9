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
        
        let textField: [UITextField] = [
            contentView.firstNameTextField,
            contentView.lastNameTextField,
            contentView.emailNameTextField,
            contentView.passwordTextField,
            contentView.confirmPasswordTextField,
            contentView.cvvTextField,
            contentView.cardNumberTextField,
            contentView.expDateTextField,
            contentView.addressTextField,
            contentView.countryTextField,
            contentView.cityTextField
        ]
        
        
        textField.forEach { textField in
            textField.returnKeyType = .done
            textField.delegate = self
        }
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

extension SignUpViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == contentView.cardNumberTextField {
            let maxLenght = 16
            let currentText = textField.text ?? ""
            guard let stringRange = Range(range, in: currentText) else {
                return false
            }
            let updateText = currentText.replacingCharacters(in: stringRange, with: string)
            return updateText.count <= maxLenght
        }
        
        if textField == contentView.cvvTextField {
            let maxLenght = 3
            let currentText = textField.text ?? ""
            guard let stringRange = Range(range, in: currentText) else {
                return false
            }
            let updateText = currentText.replacingCharacters(in: stringRange, with: string)
            return updateText.count <= maxLenght
        }
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}

