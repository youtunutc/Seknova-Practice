//
//  SignUpViewController.swift
//  Seknova-Practice
//
//  Created by imac-2627 on 2025/10/1.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - IBOutlet
    
    
    // MARK: - Variables
    weak var delegate: SignUpDelegate?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - UI Settings
    
    
    // MARK: - IBAction
    
}
// MARK: - Extensions


// MARK: - Protocol
protocol SignUpDelegate: AnyObject {
    func didTappedSignUp() // 移除參數
}
