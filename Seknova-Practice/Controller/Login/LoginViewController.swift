//
//  LoginViewController.swift
//  Seknova-Practice
//
//  Created by imac-2627 on 2025/9/24.
//
import UIKit
class LoginViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var btnApple: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    @IBOutlet weak var btnForget: UIButton!
    @IBOutlet weak var btnRegisted: UIButton!
    
    // MARK: - Variables
    
    
    // MARK: - LifeCycle
    
    
    // MARK: - UI Settings
    
    
    // MARK: - IBAction
    
}
    // MARK: - Extensions
    extension LoginViewController: RegisterDelegate {
        func didTappedRegisterBtn() {
            print("didTappedRegisterBtn called")
        }
    }

    // MARK: - Protocol


