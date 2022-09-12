//
//  CustomCollectionViewCell.swift
//  ProtocolDelegate
//
//  Created by Pawan iOS on 26/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    
    class func customCollectionViewCellRegister(collectionView: UICollectionView, indexPath: IndexPath) -> CustomCollectionViewCell {
        
        let identifer  = "Cell"
        collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: identifer)
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifer, for: indexPath) as? CustomCollectionViewCell
        
        return cell!
    }
}
