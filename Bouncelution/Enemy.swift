//
//  Enemy.swift
//  Bouncelution
//
//  Created by Rohun Banerji on 2015-02-16.
//  Copyright (c) 2015 Rohun Banerji. All rights reserved.
//

import Foundation
import SpriteKit

class Enemy
{
    var skNode: SKSpriteNode
    var speed: CGFloat
    
    init()
    {
        skNode = SKSpriteNode(imageNamed: "medium_tank")
        skNode.setScale(0.6)
        skNode.physicsBody = SKPhysicsBody(rectangleOfSize: skNode.size)
        speed  = 1.0
    }
}