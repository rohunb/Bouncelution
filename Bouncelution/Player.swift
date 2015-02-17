//
//  Player.swift
//  Bouncelution
//
//  Created by Rohun Banerji on 2015-02-16.
//  Copyright (c) 2015 Rohun Banerji. All rights reserved.
//

import Foundation
import SpriteKit

class Player
{
    var skNode: SKSpriteNode
    var speed: CGFloat
    
    init()
    {
        skNode = SKSpriteNode(imageNamed: "player car")
        speed = 1.0
        
        skNode.setScale(0.1)
        //skNode.physicsBody = SKPhysicsBody(circleOfRadius: skNode.frame.size.width * 0.5)
        skNode.physicsBody = SKPhysicsBody(rectangleOfSize: skNode.size)
        
        skNode.physicsBody?.categoryBitMask = PhysicsConfig.playerLayer
        skNode.physicsBody?.contactTestBitMask = PhysicsConfig.playerCotactBitMask
        skNode.physicsBody?.collisionBitMask = PhysicsConfig.playerCollisionBitMask
        
        skNode.physicsBody?.allowsRotation = false
        skNode.physicsBody?.restitution = 0.0
        
        
    }
    func Move(direction: CGVector)
    {
        skNode.physicsBody?.velocity = direction * speed
        var angle = atan2(direction.dy, direction.dx)
        skNode.zRotation = angle
    }
}
