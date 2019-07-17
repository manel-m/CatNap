//
//  BedNode.swift
//  CatNap
//
//  Created by Manel matougui on 7/12/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
class BedNode: SKSpriteNode, EventListenerNode {
    func didMoveToScene() {
       print("bed added to scene")
        let bedBodySize = CGSize(width: 40.0, height: 30.0)
        physicsBody = SKPhysicsBody(rectangleOf: bedBodySize)
        physicsBody!.isDynamic = false
        physicsBody!.categoryBitMask = PhysicsCategory.Bed
        physicsBody!.collisionBitMask = PhysicsCategory.None
    }
    
}
