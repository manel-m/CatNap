//
//  HintNode.swift
//  CatNap
//
//  Created by Manel matougui on 9/10/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
class HintNode: SKSpriteNode, EventListenerNode {
    
    var arrowPath: CGPath = {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0.5, y: 65.69))
        bezierPath.addLine(to: CGPoint(x: 74.99, y: 1.5))
        bezierPath.addLine(to: CGPoint(x: 74.99, y: 38.66))
        bezierPath.addLine(to: CGPoint(x: 257.5, y: 38.66))
        bezierPath.addLine(to: CGPoint(x: 257.5, y: 92.72))
        bezierPath.addLine(to: CGPoint(x: 74.99, y: 92.72))
        bezierPath.addLine(to: CGPoint(x: 74.99, y: 126.5))
        bezierPath.addLine(to: CGPoint(x: 0.5, y: 65.69))
        bezierPath.close()
        return bezierPath.cgPath
    }()
    
    func didMoveToScene() {
        color = SKColor.clear
        let shape = SKShapeNode(path: arrowPath)
        shape.strokeColor = SKColor.gray
        shape.lineWidth = 4
        shape.fillColor = SKColor.white
        shape.fillTexture = SKTexture(imageNamed: "wood_tinted")
        shape.alpha = 0.8
        addChild(shape)
        
        let move = SKAction.moveBy(x: -40, y: 0, duration: 1.0)
        let bounce = SKAction.sequence([
            move, move.reversed()
            ])
        let bounceAction = SKAction.repeat(bounce, count: 3)
        shape.run(bounceAction, completion: {
            self.removeFromParent()
        })
    } }
