
//
//  UICollectionView + Extension.swift
//  Course2Week3Task2
//
//  Created by Олеся on 16.04.2020.
//  Copyright © 2020 e-Legion. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<Cell: UICollectionViewCell>(cellType: Cell.Type,
                                              nib: Bool = true) {
        
        let reuseIdentifier = String(describing: cellType)
        
        if nib {
            let nib = UINib(nibName: reuseIdentifier, bundle: nil)
            register(nib, forCellWithReuseIdentifier: reuseIdentifier)
        } else {
            register(cellType, forCellWithReuseIdentifier: reuseIdentifier)
        }
    }
    
    func dequeueCell<Cell: UICollectionViewCell>(of cellType: Cell.Type,
                                                 for indexPath: IndexPath) -> Cell {
        
        return dequeueReusableCell(withReuseIdentifier: String(describing: cellType),
                                   for: indexPath) as! Cell
    }
    
}
