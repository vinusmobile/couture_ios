//
//  CLMovie.swift
//  CoutureiOS
//
//  Created by a on 11/13/18.
//  Copyright © 2018 a. All rights reserved.
//

import Foundation

public struct CLMovie: Codable {
    let id: Int?
    let title: String?
    let poster_path: URL?
    let overview: String?
}
