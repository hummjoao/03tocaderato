//
//  PosterViewController.swift
//  tocaderato
//
//  Created by João Pedro Monteiro on 19/07/22.
//

import UIKit

class PosterViewController: UIViewController {
    
    var movie: Movie?
    
    @IBOutlet var posterView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let movie = movie else {
            return
        }
        
        Task {
            let imageData = await Movie.downloadImageData(withPath: movie.posterPath)
            let imagem = UIImage(data: imageData) ?? UIImage()
            self.posterView.image = imagem
        }
        
        posterView.image = UIImage(named: movie.posterPath)
        
        }
}


