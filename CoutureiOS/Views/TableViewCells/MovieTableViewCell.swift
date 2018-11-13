//
//  MovieTableViewCell.swift
//  CoutureiOS
//
//  Created by a on 11/13/18.
//  Copyright © 2018 a. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var moviePosterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(movie: CLMovie) {
        titleLabel.text = movie.title
        overviewLabel.text = movie.overview
        moviePosterImageView.imageFromURL(movie.poster_path?.path ?? "", placeholder: UIImage.init(color: UIColor.gray)!)
    }
    
}
