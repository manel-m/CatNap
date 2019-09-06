//
//  PictureNode.swift
//  CatNap
//
//  Created by Manel matougui on 9/6/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
class PictureNode: SKSpriteNode, EventListenerNode,
InteractiveNode {
    func didMoveToScene() {
        isUserInteractionEnabled = true
        let pictureNode = SKSpriteNode(imageNamed: "picture")
        let maskNode = SKSpriteNode(imageNamed: "picture-frame-mask")
        let cropNode = SKCropNode()
        cropNode.addChild(pictureNode)
        cropNode.maskNode = maskNode
        addChild(cropNode)
    }
    func interact() {
        isUserInteractionEnabled = false
        physicsBody!.isDynamic = true
    }
    override func touchesEnded(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        interact() }
}
