//
//  NowPlayingCollectionViewCell.swift
//  tocaderato
//
//  Created by João Pedro Monteiro on 11/07/22.
//

import UIKit

class NowPlayingCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "nowPlayingCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func setup(image: UIImage, title: String, year: String) {
        titleLabel.text = title
        dateLabel.text = year
        imageView.image = image
    }
    
}
