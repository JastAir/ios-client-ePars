//
//  Networking.swift
//  ePars
//
//  Created by Сергей Нейкович on 27/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import UIKit
import Alamofire

class Networking {

	let BASE_URL = "http://e-pars.net/api/v1/"
	
	func authorizationPost(){
		Alamofire.request("\(BASE_URL)Common/Authorization").responseData(completionHandler: { responce in
			// todo - impl responce handler for save to coreData and when its send to model
		})
	}
}
