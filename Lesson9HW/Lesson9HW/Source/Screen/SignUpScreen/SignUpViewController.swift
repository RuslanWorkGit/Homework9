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
        
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(keyboardWillShow(_:)),
//                                               name: UIWindow.keyboardWillShowNotification,
//                                               object: nil
//        )
        
        scrollView.delegate = self
    }
    
//    @objc func keyboardWillShow(_ notification: Notification) {
//        
//    }
}

extension SignUpViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scroll View: vontentOffset: \(scrollView.contentOffset)")
    }
    

}

