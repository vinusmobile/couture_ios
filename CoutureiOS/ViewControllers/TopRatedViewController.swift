//
//  TopRatedViewController.swift
//  CoutureiOS
//
//  Created by a on 11/13/18.
//  Copyright © 2018 a. All rights reserved.
//

import UIKit

class TopRatedViewController: BaseViewController {

    @IBOutlet weak fileprivate var tableView: UITableView!
    
    var movies: [CLMovie]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableViewOptions()
        loadNowPlayingMovies()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupTableViewOptions() {
        tableView.estimatedRowHeight = 150
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(UINib(nibName: MovieTableViewCell.classIdentifier, bundle: nil), forCellReuseIdentifier: MovieTableViewCell.classIdentifier)
    }
}

extension TopRatedViewController {
    func loadNowPlayingMovies(pageIndex: Int = 0) {
        MovieAPIHandler.sharedInstance.getTopRatedMovies() { (success, result) in
            if (success) {
                self.movies = result as? [CLMovie]
                self.tableView.reloadData()
            }
        }
    }
}

extension TopRatedViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movies != nil ? self.movies!.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = self.movies![indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.classIdentifier, for: indexPath) as! MovieTableViewCell
        cell.setup(movie: movie)
        
        return cell
    }
}
