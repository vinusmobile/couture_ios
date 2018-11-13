//
//  NSObject Extension.swift
//  CoutureiOS
//
//  Created by a on 11/13/18.
//  Copyright © 2018 a. All rights reserved.
//

import UIKit

extension NSObject {
    class var classIdentifier: String {
        return String(describing: self).components(separatedBy: ".").last!
    }
}
