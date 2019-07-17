//
//  MessageNode.swift
//  CatNap
//
//  Created by Manel matougui on 7/15/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
class MessageNode: SKLabelNode {
    convenience init(message: String) {
        self.init(fontNamed: "AvenirNext-Regular")
        text = message
        fontSize = 256.0
        fontColor = SKColor.gray
        zPosition = 100
        let front = SKLabelNode(fontNamed: "AvenirNext-Regular")
        front.text = message
        front.fontSize = 256.0
        front.fontColor = SKColor.white
        front.position = CGPoint(x: -2, y: -2)
        addChild(front)
        physicsBody = SKPhysicsBody(circleOfRadius: 10)
        physicsBody!.collisionBitMask = PhysicsCategory.Edge
        physicsBody!.categoryBitMask = PhysicsCategory.Label
        physicsBody!.restitution = 0.7
        physicsBody!.contactTestBitMask = PhysicsCategory.Edge
    }
    
    var numOfBounces = 0
    func didBounce() {
        numOfBounces += 1
        if numOfBounces >= 4 {
            run(SKAction.removeFromParent())
        }
    }
}
