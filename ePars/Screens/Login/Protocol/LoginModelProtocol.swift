//
//  LoginModelProtocol.swift
//  ePars
//
//  Created by Сергей Нейкович on 26/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import Foundation

protocol LoginModelProtocol: BaseModelProtocol {
	func auth(entity: AuthFieldsEntity, callback: (_ status: LoginAuthResultStatus) -> Void)
}
