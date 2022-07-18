//
//  UpcomingCollectionViewCell.swift
//  tocaderato
//
//  Created by João Pedro Monteiro on 14/07/22.
//

import UIKit

class UpcomingCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "upcomingCell"
    

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func setup(title: String, image: UIImage, year: String) {
        titleLabel.text = title
        imageView.image = image
        dateLabel.text = year
        
    }
}
