//
//  BaseUIViewController.swift
//  ePars
//
//  Created by Сергей Нейкович on 26/02/2019.
//  Copyright © 2019 F Developers. All rights reserved.
//

import UIKit

extension UIViewController {
	
	// MARK - preloader
	func showPreloader(view: UIView){
		let preloaderViewContainer = UIView(frame: view.frame)
		preloaderViewContainer.restorationIdentifier = "preloader"
		
		let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
		let blurEffectView = UIVisualEffectView(effect: blurEffect)
		blurEffectView.frame = view.bounds
		blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		preloaderViewContainer.addSubview(blurEffectView)
		
		let preloader = UIActivityIndicatorView(frame: view.frame)
		preloader.style = .whiteLarge
		preloader.startAnimating()
		
		preloaderViewContainer.addSubview(preloader)
		view.addSubview(preloaderViewContainer)
		preloaderViewContainer.bringSubviewToFront(view)
	}
	
	func hidePreloader(view: UIView){
		for subview in view.subviews {
			if subview.restorationIdentifier == "preloader" {
				subview.removeFromSuperview()
			}
		}
	}
}
