//
//  ImageView.swift
//  CoutureiOS
//
//  Created by a on 11/13/18.
//  Copyright © 2018 a. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore
import AFImageHelper

public extension UIImageView {
    func imageFromURL(_ url: String, placeholder: UIImage, fadeIn: Bool = true, shouldCacheImage: Bool = true, closure: ((_ image: UIImage?) -> ())? = nil){
        self.image = UIImage.image(fromURL: url, placeholder: placeholder, shouldCacheImage: shouldCacheImage) {
            (image: UIImage?) in
            if image == nil {
                return
            }
            self.image = image
            if fadeIn {
                let transition = CATransition()
                transition.duration = 0.5
                transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                transition.type = kCATransitionFade
                self.layer.add(transition, forKey: nil)
            }
            closure?(image)
        }
    }
}
