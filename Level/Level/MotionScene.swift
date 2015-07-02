//
//  MotionScene.swift
//  Level
//
//  Created by Kyle Brooks Robinson on 6/29/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit
import SpriteKit

class MotionScene: SKScene {
    
    let dot = SKShapeNode(ellipseOfSize: CGSize(width: 40, height: 40))
    
    override func didMoveToView(view: SKView) {
    
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        
        physicsBody = SKPhysicsBody(edgeLoopFromRect: view.bounds)
        
        size = view.frame.size
        
        dot.fillColor = UIColor(red:0.93, green:0.46, blue:0.11, alpha:1)
        dot.position = view.center
        dot.physicsBody = SKPhysicsBody(circleOfRadius: 20)

        addChild(dot)
        
    }
   
}
