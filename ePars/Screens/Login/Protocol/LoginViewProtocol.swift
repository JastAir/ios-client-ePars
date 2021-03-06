//
//  LoginViewProtocol.swift
//  ePars
//
//  Created by Сергей Нейкович on 26/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: BaseViewProtocol {
	func autorizationResultCallback(status: LoginAuthResultStatus)
}
