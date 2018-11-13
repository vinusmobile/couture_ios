//
//  MovieAPIHandler.swift
//  Omega
//
//  Created by 123 on 12/1/17.
//  Copyright © 2017 123. All rights reserved.
//

import UIKit
import Alamofire

final class MovieAPIHandler {
    
    static let sharedInstance = MovieAPIHandler()
    
    let baseURL = "https://api.themoviedb.org/3"
    let apiKey = "4e0f4ae61317b9fa9f2961db67572499"
}

// MARK: - Authentication
extension MovieAPIHandler {
    /// Get NowPlayingMovies: [TESTED]
    func getNowPlayingMovies(page: Int = 1, callback: @escaping (Bool, AnyObject) -> ()) {
        Alamofire.request(self.baseURL + "/movie/now_playing?api_key=" + apiKey + "&page=\(page)",
                          method: .get,
                          parameters: nil,
                          encoding: JSONEncoding.default,
                          headers: nil)
            .responseData { (response) in
                guard let data = response.data else {
                    callback(false, response.error as AnyObject)
                    return
                }

                let decorder = JSONDecoder()
                do {
                    let responseRoot = try decorder.decode(CLResponseRoot.self, from: data)
                    let resultStatus = responseRoot.success ?? true
                    callback(resultStatus, (resultStatus ? responseRoot.results as AnyObject : responseRoot.status_message as AnyObject))
                } catch let error {
                    callback(false, error as AnyObject)
                }
        }
    }
    
    /// Get PopularMovies: [TESTED]
    func getPopularMovies(page: Int = 1, callback: @escaping (Bool, AnyObject) -> ()) {
        Alamofire.request(self.baseURL + "/movie/popular?api_key=" + apiKey + "&page=\(page)",
            method: .get,
            parameters: nil,
            encoding: JSONEncoding.default,
            headers: nil)
            .responseData { (response) in
                guard let data = response.data else {
                    callback(false, response.error as AnyObject)
                    return
                }
                
                let decorder = JSONDecoder()
                do {
                    let responseRoot = try decorder.decode(CLResponseRoot.self, from: data)
                    let resultStatus = responseRoot.success ?? true
                    callback(resultStatus, (resultStatus ? responseRoot.results as AnyObject : responseRoot.status_message as AnyObject))
                } catch let error {
                    callback(false, error as AnyObject)
                }
        }
    }
    
    /// Get NowPlayingMovies: [TESTED]
    func getTopRatedMovies(page: Int = 1, callback: @escaping (Bool, AnyObject) -> ()) {
        Alamofire.request(self.baseURL + "/movie/top_rated?api_key=" + apiKey + "&page=\(page)",
            method: .get,
            parameters: nil,
            encoding: JSONEncoding.default,
            headers: nil)
            .responseData { (response) in
                guard let data = response.data else {
                    callback(false, response.error as AnyObject)
                    return
                }
                
                let decorder = JSONDecoder()
                do {
                    let responseRoot = try decorder.decode(CLResponseRoot.self, from: data)
                    let resultStatus = responseRoot.success ?? true
                    callback(resultStatus, (resultStatus ? responseRoot.results as AnyObject : responseRoot.status_message as AnyObject))
                } catch let error {
                    callback(false, error as AnyObject)
                }
        }
    }
    
    /// Get NowPlayingMovies: [TESTED]
    func getUpcomingMovies(page: Int = 1, callback: @escaping (Bool, AnyObject) -> ()) {
        Alamofire.request(self.baseURL + "/movie/upcoming?api_key=" + apiKey + "&page=\(page)",
            method: .get,
            parameters: nil,
            encoding: JSONEncoding.default,
            headers: nil)
            .responseData { (response) in
                guard let data = response.data else {
                    callback(false, response.error as AnyObject)
                    return
                }
                
                let decorder = JSONDecoder()
                do {
                    let responseRoot = try decorder.decode(CLResponseRoot.self, from: data)
                    let resultStatus = responseRoot.success ?? true
                    callback(resultStatus, (resultStatus ? responseRoot.results as AnyObject : responseRoot.status_message as AnyObject))
                } catch let error {
                    callback(false, error as AnyObject)
                }
        }
    }
    
}
