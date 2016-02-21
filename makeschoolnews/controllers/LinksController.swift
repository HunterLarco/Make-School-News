//
//  ViewController.swift
//  makeschoolnews
//
//  Created by Hunter on 2/11/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

class LinksController: UIViewController {
    
    @IBOutlet var linksView: LinksView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        linksView.links = [LinkModel.sample, LinkModel.sample, LinkModel.sample]
        linksView.setupCollectionView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

