//
//  LinkCell.swift
//  makeschoolnews
//
//  Created by Hunter on 2/11/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

let LinkCellIdentifier = "LinkCell"
class LinkCell : UITableViewCell {
    
    @IBOutlet weak var titleLabel: WrappedLabel!
    @IBOutlet weak var voteLabel: UILabel!
    
    var link: LinkModel! {
        didSet {
            titleLabel.text = link.getTitle()
            voteLabel.text = String(link.getVotes())
        }
    }
    
    static func nib() -> UINib {
        return UINib(nibName: LinkCellIdentifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        self.selectionStyle = UITableViewCellSelectionStyle.None
    }
    
}