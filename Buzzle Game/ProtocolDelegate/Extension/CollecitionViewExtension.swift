//
//  CollecitionViewExtension.swift
//  ProtocolDelegate
//
//  Created by Pawan iOS on 26/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import Foundation
import UIKit

var imagesArray = [
    UIImage(imageLiteralResourceName: "4"),
    UIImage(named: "3"),UIImage(named: "2"),
    UIImage(named: "1")
]

//Marks:-  ViewController: UICollectionViewDelegate, UICollectionViewDataSource
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = CustomCollectionViewCell.customCollectionViewCellRegister(collectionView: collectionView, indexPath: indexPath)
        cell.img.image = imagesArray[indexPath.row]
        return cell
        
    }
    
}

//Marks:-  ViewController: UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        return CGSize(width: collectionView.frame.width/2-0.1, height: collectionView.frame.width/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let item = imagesArray.remove(at: sourceIndexPath.row)
        imagesArray.insert(item, at: sourceIndexPath.row)
    }
}

