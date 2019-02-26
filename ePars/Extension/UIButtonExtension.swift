//
//  UIButtonExtension.swift
//  ePars
//
//  Created by Сергей Нейкович on 26/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import UIKit

extension UIButton {

	func bordered(){
		self.layer.cornerRadius = 5.0
		self.layer.borderColor =
			UIColor(red: 0.0, green: 122.0/255.0, blue: 1.0, alpha: 1.0).cgColor
		self.layer.borderWidth = 1.0
		self.contentEdgeInsets =
			UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
	}

}
