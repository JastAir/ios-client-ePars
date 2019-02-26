//
//  NetworkService.swift
//  ePars
//
//  Created by Сергей Нейкович on 27/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

protocol NetworkService {
	
	func authPost(model: AuthorizeFormModel) -> ServiceResult<CompleteToken>
}
