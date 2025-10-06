//
//  PrivateAgreeViewController.swift
//  Seknova-Practice
//
//  Created by imac-2627 on 2025/10/7.
//

import UIKit

class PrivateAgreeViewController: UIViewController {

    // MARK: - IBOutlet
    
    
    // MARK: - Variables
    weak var delegate: PrivateAgreeDelegate?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - UI Settings
    
    
    // MARK: - IBAction
    
}
// MARK: - Extensions


// MARK: - Protocol

protocol PrivateAgreeDelegate: AnyObject {
    func didTappedPrivateAgree()
}
