//
//  WrappedLabel.swift
//  makeschoolnews
//
//  Created by Hunter on 2/21/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

@IBDesignable public class WrappedLabel: UILabel {
    
    @IBInspectable public var wrapped: Bool = true {
        didSet {
            if wrapped {
                self.lineBreakMode = .ByWordWrapping
                self.numberOfLines = 0
            }
        }
    }
    
}