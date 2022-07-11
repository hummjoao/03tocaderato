//
//  FeaturedViewController.swift
//  tocaderato
//
//  Created by João Pedro Monteiro on 08/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet var popularCollectionView: UICollectionView!
    @IBOutlet var nowPlayingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        popularCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: <#T##IndexPath#>) as? PopularCollectionViewCell
        
        cell?.titleLabel.text = "Título do filme"
        cell?.image.image = UIImage()
        
        return cell ?? UICollectionViewCell()
    }
    

}

