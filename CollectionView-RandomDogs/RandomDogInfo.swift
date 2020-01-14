//
//  RandomDogInfo.swift
//  CollectionView-RandomDogs
//
//  Created by Juan Ceballos on 1/14/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import Foundation

typealias DogImage = String

struct  RandomDogInfo: Decodable {
    let message: [DogImage]
}
