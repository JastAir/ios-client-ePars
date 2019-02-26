//
//  ServiceResult.swift
//  ePars
//
//  Created by Сергей Нейкович on 27/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

struct ServiceResult<T : Codable>: Codable {
	let resultObject: T
	//	let status: ServiceResultStatus // todo - make codable & decodable extension for enum
	let message: String
}
