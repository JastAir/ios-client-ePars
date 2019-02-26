//
//  UITextFieldExtension.swift
//  ePars
//
//  Created by Сергей Нейкович on 26/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import UIKit

extension UITextField {

	func setHint(text: String){
		self.layer.borderColor = UIColor(red: 0.0, green: 122.0/255.0, blue: 1.0, alpha: 1.0).cgColor
		self.layer.borderWidth = 1.0
		self.layer.cornerRadius = 5.0
		self.layer.backgroundColor = UIColor.white.cgColor
		
		
		let hintUILabel = UILabel(frame:
			CGRect(x: self.frame.width, y: 0, width: 100, height: 100)
		)
		hintUILabel.text = text
		hintUILabel.sizeToFit()
		
		hintUILabel.center = CGPoint(
			x: (self.frame.width - (hintUILabel.frame.width / 2)) - 8,
			y: hintUILabel.frame.height / 2 + 6
		)
		
		hintUILabel.textAlignment = .right
		hintUILabel.font = UIFont.systemFont(ofSize: 12)
		hintUILabel.textColor = UIColor.lightGray
		hintUILabel.padding = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
		
		self.addSubview(hintUILabel)
	}
}
