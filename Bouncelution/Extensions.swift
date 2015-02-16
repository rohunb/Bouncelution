//
//  Extensions.swift
//  Bouncelution
//
//  Created by Rohun Banerji on 2015-02-16.
//  Copyright (c) 2015 Rohun Banerji. All rights reserved.
//

import Foundation
import SpriteKit

extension CGPoint
{
    var length : CGFloat
    {
        return sqrt(self.x * self.x + self.y * self.y)
    }
    
    var normalized: CGPoint
    {
        return CGPoint(x:self.x/self.length, y: self.y/self.length)
    }
    
    func GetCGVector() -> CGVector
    {
        return CGVector(dx: self.x, dy: self.y)
    }
}
func - (left: CGPoint, right: CGPoint) -> CGPoint
{
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

extension CGVector
{
    var length : CGFloat
    {
        return sqrt(self.dx * self.dx + self.dy * self.dy)
    }
    var normalized: CGVector
    {
        return CGVector(dx:self.dx/self.length, dy: self.dy/self.length)
    }
    func GetCGPoint() -> CGPoint
    {
        return CGPoint(x: self.dx, y: self.dy)
    }
}
func * (left: CGVector, right: CGFloat) -> CGVector
{
    return CGVector(dx: left.dx * right, dy: left.dy * right)
}