//
//  ViewController.swift
//  ePars
//
//  Created by Сергей Нейкович on 26/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewProtocol {
	
	private lazy var presenter: LoginPresenterProtocol = LoginPresenter(view: self, model: LoginModel())
	
	// mark - UI
	@IBOutlet weak var loginTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	@IBOutlet weak var rememberMeSwitch: UISwitch!
	@IBOutlet weak var signInButton: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// setup UI
		loginTextField.setHint(text: "Login")
		passwordTextField.setHint(text: "Password")
		signInButton.bordered()
	}
	
	@IBAction func signInAction(_ sender: Any) {
		showPreloader(view: self.view)
		
		guard let login = loginTextField.text else {
			onError("Login field error")
			return
		}
		
		guard let password = passwordTextField.text else {
			onError("Password field error")
			return
		}
		
		presenter.auth(entity: AuthFieldsEntity(
			login: login,
			password: password,
			rememberMe: rememberMeSwitch.isOn))
	}
	
	// mark - LoginViewProtocol
	func autorizationResultCallback(status: LoginAuthResultStatus) {
		hidePreloader(view: self.view)
		print("All good")
	}
	
	func onError(_ message: String) {
		let alertController = UIAlertController(title: "Unknown error", message: "\(message)\r\nPlease try again later", preferredStyle: .alert)
		self.present(alertController, animated: true)
	}
}

