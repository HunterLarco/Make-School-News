//
//  LinkCell.swift
//  makeschoolnews
//
//  Created by Hunter on 2/11/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

let LinkCellIdentifier = "LinkCell"
class LinkCell : UICollectionViewCell {
    
    var link: LinkModel? {
        didSet {
            
        }
    }
    
    static func nib() -> UINib {
        return UINib(nibName: LinkCellIdentifier, bundle: nil)
    }
    
}