//
//  TableViewCell.swift
//  Course2Week3Task2
//
//  Created by Олеся on 16.04.2020.
//  Copyright © 2020 e-Legion. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    func cellInfo (_ chat: Photo ) {
        accessoryType = .detailButton
        imageView?.image = chat.image
        textLabel?.text = chat.name
    }
    
}
