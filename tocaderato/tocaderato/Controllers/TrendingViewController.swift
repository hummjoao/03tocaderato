//
//  TrendingViewController.swift
//  tocaderato
//
//  Created by João Pedro Monteiro on 19/07/22.
//

import UIKit

class TrendingViewController: UIViewController {

    var movie: Movie?
    
    
    //N consegui conectar os outlets; fica dando como "conexao ilegal"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let movie = movie else {
            return
        }
        
    //    titleLabel.text = movie.title
    //    posterImage.image = UIImage(named: movie.posterPath)
     //   ratingLabel.text = "Rating: \(movie.voteAverage)/10"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            //abrir poster do filme
            if let destination = segue.destination as? PosterViewController {
                let movie = sender as? Movie
                destination.movie = movie
            }
        }
}
    

    
