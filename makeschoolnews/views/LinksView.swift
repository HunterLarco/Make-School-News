//
//  LinkCollectionView.swift
//  makeschoolnews
//
//  Created by Hunter on 2/21/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

class LinksView : UIView {
    
    var dataSource: ArrayDataSource?
    var links: [LinkModel]?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func setupCollectionView() {
        dataSource = ArrayDataSource(items:links!, cellIdentifier: LinkCellIdentifier) {
            (cell, item) in
            
            if let linkCell = cell as? LinkCell {
                if let link = item as? LinkModel {
                    linkCell.link = link
                }
            }
        }
        collectionView.dataSource = dataSource
        collectionView.delegate = self
        collectionView.pagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.registerNib(LinkCell.nib(), forCellWithReuseIdentifier: LinkCellIdentifier)
    }
    
}

extension LinksView: UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {}
}

extension LinksView: UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let width = (Int(collectionView.frame.size.width)) - 20
        let height = (Int(collectionView.frame.size.height)) - 20
        let size = CGSize(width: width, height: height)
        
        return size
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
    }
}