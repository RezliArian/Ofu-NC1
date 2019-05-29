//
//  GameScene.swift
//  SKEmitterTutorial
//
//  Created by Rezli Arian Perdana on 17/05/19.
//  Copyright © 2019 RezL.inc. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        addBackground()
        addEmitter()
    }
    
    
    func addBackground() {
        let backdrop = SKSpriteNode(imageNamed: Background.blossom)
        addChild(backdrop)
        backdrop.position = CGPoint(x: size.width / 2, y: size.height / 2)
        backdrop.zPosition = Layers.background
    }
    
    
    
    func addEmitter() {
        let emitter = SKEmitterNode(fileNamed: Emitter.dust)!
        emitter.position = CGPoint(x: 0, y: size.height / 2)
        addChild(emitter)
    }
}
