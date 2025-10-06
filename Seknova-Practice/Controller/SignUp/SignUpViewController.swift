//
//  SignUpViewController.swift
//  Seknova-Practice
//
//  Created by imac-2627 on 2025/10/1.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - IBOutlet
    
    
    @IBOutlet weak var txfPwdAgain: UITextField!
    @IBOutlet weak var txfPwd: UITextField!
    @IBOutlet weak var txfEmail: UITextField!
    @IBOutlet weak var btnCountry: UIButton!
    @IBOutlet weak var btnCheck: UIButton!
    @IBOutlet weak var btnTerms: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var lbCountry: UILabel!
    
    // MARK: - Variables
    weak var delegate: SignUpDelegate?
    var isChecked = false
    let countries = [ "Taiwan(台灣)", "China(中國)", "America(美國)", "Japan(日本)" ]
    var selectedCountry: String?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUi()
    }
    
    // MARK: - UI Settings
    func setUi() {
        btnCheck.setTitle("", for: .normal)
        btnCheck.layer.cornerRadius = 13
        btnCheck.layer.borderWidth = 1
        btnCheck.layer.borderColor = UIColor.gray.cgColor
        btnCheck.backgroundColor = .clear
        
        
        btnTerms.setTitle("條件與條款", for: .normal)
        btnTerms.setTitleColor(.systemBlue, for: .normal)
        
        lbCountry.text = "Taiwan(台灣)"
        
    }
        
    
    // MARK: - IBAction
    
    @IBAction func checkButtonTapped(_ sender: Any) {
        isChecked.toggle()
        if isChecked {
            btnCheck.backgroundColor = .systemBlue
        } else {
            btnCheck.backgroundColor = .clear
        }
    }
    
    @IBAction func termButtonTapped(_ sender: Any) {
        let PrivateAgreeVC = PrivateAgreeViewController(nibName: "PrivateAgreeViewController", bundle: nil)
        self.navigationController?.pushViewController(PrivateAgreeVC, animated: true)
    }
    @IBAction func countryButtonTapped(_ sender: Any) {
        showCountryPicker()
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        let ActiveAccountVC = ActiveAccountViewController(nibName: "ActiveAccountViewController", bundle: nil)
        self.navigationController?.pushViewController(ActiveAccountVC, animated: true)
    }
    
    
}
// MARK: - Extensions
extension SignUpViewController: PrivateAgreeDelegate {
    func didTappedPrivateAgree() {
        print("隱私條款被點擊")
    }
}

extension SignUpViewController: ActiveAccountDelegate {
    func didTappedActiveAccount() {
        print("啟動帳號被點擊")
    }
}
extension SignUpViewController {
    func showCountryPicker() {
        let alert = UIAlertController(title: "\n\n\n\n\n\n\n\n\n", message: nil, preferredStyle: .actionSheet)
        let picker = UIPickerView(frame: CGRect(x: 0, y: 0, width: alert.view.bounds.width - 20, height: 200))
        picker.dataSource = self
        picker.delegate = self
        alert.view.addSubview(picker)
        alert.addAction(UIAlertAction(title: "完成", style: .default, handler: { _ in
            if let country = self.selectedCountry {
                self.lbCountry.text = country
            }
        }))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel))
        present(alert, animated: true)
    }
}
    
extension SignUpViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int { 1 }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        countries.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        countries[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedCountry = countries[row]
    }
}

// MARK: - Protocol
protocol SignUpDelegate: AnyObject {
    func didTappedSignUp() // 移除參數
}
