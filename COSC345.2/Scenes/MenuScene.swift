//
//  MenuScene.swift
//  swipeGestures
//
//  Created by Brittany Duncan on 7/08/20.
//

import Foundation
import SpriteKit

class MenuScene: SKScene {
    let playButton = SKLabelNode()
    override init(size: CGSize) {
        super.init(size: size)
        backgroundColor = SKColor.white
        playButton.fontColor = SKColor.black
        playButton.text = "play"
        playButton.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(playButton)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        if playButton.contains(touchLocation) {
            let reveal = SKTransition.doorsOpenVertical(withDuration: 0.5)
            let scene = GameScene(size: size)
            self.view?.presentScene(scene, transition: reveal)
        }
    }
}
