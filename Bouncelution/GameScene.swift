//
//  GameScene.swift
//  Bouncelution
//
//  Created by Rohun Banerji on 2015-02-14.
//  Copyright (c) 2015 Rohun Banerji. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    //Scene Objects
    var arena: Arena!
    var player: Player!
    var enemy: Enemy!
    

    
    
    var touchPos = CGPoint()
    var prevTouchPos = CGPoint()
    
    
    override func didMoveToView(view: SKView)
    {
        SetupWorld()
        SetupEnemies()
        SetupPlayer()
                
        println("Scene Setup Complete")
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
        /* Called when a touch begins */
        SetTouchPos(touches)
        prevTouchPos = touchPos
    }
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent)
    {
        SetTouchPos(touches)
        var direction = (touchPos - prevTouchPos).GetCGVector()
        player.Move(direction)
        
    }
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        SetTouchPos(touches)
        var direction = (touchPos - prevTouchPos).GetCGVector()
        player.Move(direction)
    }
    func SetTouchPos(touches: NSSet)
    {
        for touch: AnyObject in touches
        {
            let location = touch.locationInView(self.view)
            touchPos.x = location.x - self.size.width * 0.5
            touchPos.y = (location.y * -1.0) + self.size.height * 0.5
        }
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func SetupWorld()
    {
        arena = Arena()
        addChild(arena.skNode)
        self.physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
        
    }
    func SetupPlayer()
    {
        player = Player()
        addChild(player.skNode)
    }
    func SetupEnemies()
    {
        enemy = Enemy()
        addChild(enemy.skNode)
    }
}
