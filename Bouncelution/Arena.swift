
//
//  Arena.swift
//  Bouncelution
//
//  Created by Rohun Banerji on 2015-02-16.
//  Copyright (c) 2015 Rohun Banerji. All rights reserved.
//

import Foundation
import SpriteKit

class Arena
{
    var skNode: SKSpriteNode
    
    init()
    {
        skNode = SKSpriteNode(imageNamed: "Arena")
        skNode.setScale(1.8)
        var circlePath = CGPathCreateMutable()
        CGPathAddArc(circlePath, nil, 0, 0, skNode.frame.width * 0.5, CGFloat(0.0), CGFloat(M_PI * 2), true)
        var border = SKPhysicsBody(edgeLoopFromPath: circlePath)
        skNode.physicsBody = border;
        skNode.physicsBody?.categoryBitMask = PhysicsConfig.arenaLayer


    }
}
