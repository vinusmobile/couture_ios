//
//  CLMovie.swift
//  CoutureiOS
//
//  Created by a on 11/13/18.
//  Copyright © 2018 a. All rights reserved.
//

import Foundation

public struct CLResponseRoot: Codable {
    let page: Int?
    let total_results: Int?
    let total_pages: Int?
    let results: [CLMovie]?
    
    /// Error
    let status_code: Int?
    let status_message: String?
    let success: Bool?
}
