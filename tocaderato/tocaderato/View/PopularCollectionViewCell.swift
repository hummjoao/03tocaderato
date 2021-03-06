//
//  PopularCollectionViewCell.swift
//  tocaderato
//
//  Created by João Pedro Monteiro on 11/07/22.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "popularCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    func setup(title: String, imageView: UIImage) {
        titleLabel.text = title
        self.imageView.image = imageView
    }
    
}
