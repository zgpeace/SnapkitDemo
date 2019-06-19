//
//  LoginView.swift
//  SnapKitDemo
//
//  Created by Gabriel Theodoropoulos.
//  Copyright © 2018 Appcoda. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    // MARK: Properties
    
    let containerViewBGColor = UIColor(red: 167.0/255.0, green: 177.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    
    let innerViewBGColor = UIColor(red: 190.0/255.0, green: 195.0/255, blue: 198.0/255.0, alpha: 1.0)
    
    let containerViewHeight: CGFloat = 192.0
    
    let textfieldHeight: CGFloat = 44.0
    
    let topInnerViewHeight: CGFloat = 24.0
    
    let bottomInnerViewHeight: CGFloat = 36.0
    
    let connectButtonWidth: CGFloat = 120.0
    
    var viewContainer: UIView!
    
    var viewTop: UIView!
    
    var viewBottom: UIView!
    
    var txtEmail: UITextField!
    
    var txtPassword: UITextField!
    
    var btnConnect: UIButton!
    
    var activityIndicator: UIActivityIndicatorView!
    
    var centerYConstraint: Constraint!
    
    var timer: Timer!
    
    var isAnimating = false
    
    
    
    // MARK: Initialization
    
    init() {
        super.init(frame: CGRect.zero)
        NotificationCenter.default.addObserver(self, selector: #selector(self.handleKeyboardWillShow(notification:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.handleKeyboardDidHide(notification:)), name: .UIKeyboardDidHide, object: nil)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    
    // MARK: Custom Methods
    
    @objc func connect() {
        
    }
    
    
    @objc func handleKeyboardWillShow(notification: Notification) {
        
    }
    
    
    @objc func handleKeyboardDidHide(notification: Notification) {
        
    }
}
