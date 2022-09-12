//
//  LongPressGesture.swift
//  ProtocolDelegate
//
//  Created by Pawan iOS on 26/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    @objc func handleLongPressGesture(_ gesture: UILongPressGestureRecognizer) {
        
        guard let collectionView = collectionView else { return }
        
        switch gesture.state {
            
        case .began:
            guard let targetIndexPath = collectionView.indexPathForItem(at: gesture.location(in: collectionView)) else {return}
            
            collectionView.beginInteractiveMovementForItem(at: targetIndexPath)
            
        case .changed:
            collectionView.updateInteractiveMovementTargetPosition(gesture.location(in: collectionView))
            
        case .ended:
            collectionView.endInteractiveMovement()
            
        case .possible:
            break
        case .cancelled:
            break
        case .failed:
            break
        }
    }

}
