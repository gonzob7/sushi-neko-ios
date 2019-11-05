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
        character = (childNode(withName: "character") as! Character)
        
        /* Setup chopstick connections */
        sushiBasePiece.connectChopsticks()
    }
    
    /* Game objects */
    var sushiBasePiece: SushiPiece!
    var character: Character!
    var sushiTower: [SushiPiece] = []
    
    
    
    func addTowerPiece(side: Side){
        /* Add a new sushi piece to the sushi tower */

        /* Copy original sushi piece */
        
        let newPiece = sushiBasePiece.copy() as! SushiPiece
        newPiece.connectChopsticks()
        
        /* Access last piece properties */
        let lastPiece = sushiTower.last
        
        /* Add on top of last piece, default on first piece */
        let lastPosition = lastPiece?.position ?? sushiBasePiece.position
        newPiece.position.x = lastPosition.x
        newPiece.position.y = lastPosition.y + 55
        
        /* Increment Z to ensure it's on top of the last piece, default on first piece*/
        let lastZPosition = lastPiece?.zPosition ?? sushiBasePiece.zPosition
        newPiece.zPosition = lastZPosition + 1
        
        /* Set Side */
        newPiece.side = side
        
        /* Add sushi piece to sushi tower */
        sushiTower.append(newPiece)
    }
    
}


