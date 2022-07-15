//
//  FeaturedViewControllers+UICollectionViewDataSource.swift
//  tocaderato
//
//  Created by João Pedro Monteiro on 12/07/22.
//

import UIKit
extension FeaturedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == popularCollectionView {
            return popularMovies.count
        } else if collectionView == nowPlayingCollectionView {
            return nowPlayingMovies.count
        } else {
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == popularCollectionView {
            return makePopularCell(collectionView, indexPath)
        } else if collectionView == nowPlayingCollectionView {
            return makeNowPlayingCell(indexPath)
        }
        return UICollectionViewCell()
    }
    
    
    
    fileprivate func makePopularCell(_ collectionView: UICollectionView, _ indexPath: IndexPath) -> PopularCollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.cellIdentifier, for: indexPath) as? PopularCollectionViewCell {
            
            cell.setup(title: popularMovies[indexPath.item].title, imageView: UIImage())
            
            let movie = popularMovies[indexPath.item]
            
            Task {
                let imageData = await Movie.downloadImageData(withPath: movie.backdropPath)
                let imagem = UIImage(data: imageData) ?? UIImage()
                cell.setup(title: movie.title, imageView: imagem)
            }
            
            
            return cell}
        return PopularCollectionViewCell()
    }
    
    
    fileprivate func makeNowPlayingCell(_ indexPath: IndexPath) -> NowPlayingCollectionViewCell {
        if let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: NowPlayingCollectionViewCell.cellIdentifier, for: indexPath) as? NowPlayingCollectionViewCell {
            let titulo: String = nowPlayingMovies[indexPath.item].title
            
            cell.setup(image: UIImage(named: nowPlayingMovies[indexPath.item].posterPath) ?? UIImage(), title: titulo, year: String(nowPlayingMovies[indexPath.item].releaseDate.prefix(4)))
            
            return cell
        }
        return NowPlayingCollectionViewCell()
    }
    
}
