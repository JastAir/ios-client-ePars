//
//  LoginPresenter.swift
//  ePars
//
//  Created by Сергей Нейкович on 26/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol {
	
	private let view: LoginViewProtocol
	private let model: LoginModelProtocol
	
	init(view: LoginViewProtocol, model: LoginModelProtocol) {
		self.view = view
		self.model = model
	}
	
	func auth(entity: AuthFieldsEntity) {
		model.auth(entity: entity) { callback in
			view.autorizationResultCallback(status: .success)
		}
	}
	
	func onError(_ message: String) {
		
	}
}
