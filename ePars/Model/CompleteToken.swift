//
//  CompleteToken.swift
//  ePars
//
//  Created by Сергей Нейкович on 27/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

struct CompleteToken: Codable {
	var accessToken: String
	var refreshToken: String
	var expirationTime: String
}
