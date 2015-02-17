//
//  PhysicsConfig.swift
//  Bouncelution
//
//  Created by Rohun Banerji on 2015-02-17.
//  Copyright (c) 2015 Rohun Banerji. All rights reserved.
//

import Foundation
import SpriteKit

struct PhysicsConfig
{
    //Physics Layers
    static var noneLayer:UInt32 = 1 << 0
    static var playerLayer:UInt32 = 1 << 1
    static var enemyLayer: UInt32 = 1 << 2
    static var arenaLayer: UInt32 = 1 << 3
    static var allLayer: UInt32 = UINT32_MAX
    
    //Collision Mask
    static var playerCotactBitMask: UInt32 = PhysicsConfig.arenaLayer// | PhysicsConfig.enemyLayer
    static var enemyContactBitMask: UInt32 = PhysicsConfig.arenaLayer// | PhysicsConfig.playerLayer
    
    static var playerCollisionBitMask: UInt32 = PhysicsConfig.enemyLayer | PhysicsConfig.arenaLayer
    static var enemyCollisionBitMask: UInt32 = PhysicsConfig.playerLayer | PhysicsConfig.arenaLayer
    
    
}