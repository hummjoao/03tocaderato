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
    
    fileprivate func makePopularCell(_ collectionView: UICollectionView, _ indexPath: IndexPath) -> PopularCollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.cellIdentifier, for: indexPath) as? PopularCollectionViewCell{
            cell.titleLabel.text = popularMovies[indexPath.item].title
            cell.imageView.image = UIImage(named: popularMovies[indexPath.item].backdrop)
            return cell}
        return PopularCollectionViewCell()
    }
    
    
    fileprivate func makeNowPlayingCell(_ indexPath: IndexPath) -> NowPlayingCollectionViewCell {
        if let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: NowPlayingCollectionViewCell.cellIdentifier, for: indexPath) as? NowPlayingCollectionViewCell {
            let titulo: String = nowPlayingMovies[indexPath.item].title
            cell.titleLabel.text = titulo
            cell.dateLabel.text = String(nowPlayingMovies[indexPath.item].releaseDate.prefix(4))
            cell.imageView.image = UIImage(named: nowPlayingMovies[indexPath.item].poster)
            return cell
        }
        return NowPlayingCollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == popularCollectionView {
            return makePopularCell(collectionView, indexPath)
        } else if collectionView == nowPlayingCollectionView {
            return makeNowPlayingCell(indexPath)
        }
        return UICollectionViewCell()
    }
}
