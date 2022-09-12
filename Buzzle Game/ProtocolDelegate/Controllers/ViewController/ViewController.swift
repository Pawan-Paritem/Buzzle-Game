//
//  ViewController.swift
//  ProtocolDelegate
//
//  Created by Ninesol Tech on 16/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPressGesture(_:)))
        collectionView.addGestureRecognizer(gesture)
    
    }
}
