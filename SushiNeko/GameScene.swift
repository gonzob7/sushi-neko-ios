//
//  GameScene.swift
//  SushiNeko
//
//  Created by Gonzalo Birrueta on 11/4/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import SpriteKit

/* Tracking enum for use with character and sushi side */
enum Side {
    case left, right, none
}

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        /* Connect game objects */
        sushiBasePiece = (childNode(withName: "sushiBasePiece") as! SushiPiece)
    }
    
    /* Game objects */
    var sushiBasePiece: SushiPiece!
    
    
}


