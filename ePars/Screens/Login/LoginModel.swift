//
//  LoginModel.swift
//  ePars
//
//  Created by Сергей Нейкович on 26/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import Foundation

class LoginModel: LoginModelProtocol {
	
	func auth(entity: AuthFieldsEntity, callback: (LoginAuthResultStatus) -> Void) {
		callback(.success)
	}
	
	
	func onError(_ message: String) {
		
	}
}
