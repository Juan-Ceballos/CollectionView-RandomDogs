//
//  DogCell.swift
//  CollectionView-RandomDogs
//
//  Created by Juan Ceballos on 1/14/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit
import ImageKit
import NetworkHelper

class DogCell: UICollectionViewCell {
    @IBOutlet weak var dogImageView: UIImageView!
    
    public func configureCell(with dogImage: DogImage)  {
        dogImageView.getImage(with: dogImage)   { [weak self] (result) in
            switch result   {
            case .failure(let appError):
                print(appError)
            case .success(let image):
                DispatchQueue.main.async {
                    self?.dogImageView.image = image
                }
            }
            
        }
    }
}
