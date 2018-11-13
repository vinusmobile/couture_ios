//
//  NowPlayingViewController.swift
//  CoutureiOS
//
//  Created by a on 11/13/18.
//  Copyright © 2018 a. All rights reserved.
//

import UIKit

class NowPlayingViewController: BaseViewController {

    @IBOutlet weak fileprivate var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension NowPlayingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableView()
    }
}
