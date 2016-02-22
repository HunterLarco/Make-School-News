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
    
    @IBOutlet weak var tableView: UITableView!
    
    func setupCollectionView() {
        dataSource = ArrayDataSource(items:links!, cellIdentifier: LinkCellIdentifier) {
            (cell, item) in
            
            if let linkCell = cell as? LinkCell {
                if let link = item as? LinkModel {
                    linkCell.link = link
                }
            }
        }
        tableView.dataSource = dataSource
        tableView.delegate = self
        tableView.registerNib(LinkCell.nib(), forCellReuseIdentifier: LinkCellIdentifier)
    }
    
}

extension LinksView: UITableViewDelegate {
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}
