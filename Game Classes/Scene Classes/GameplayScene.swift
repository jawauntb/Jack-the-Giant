//
//  GameplayScene.swift
//  Jack The Giant
//
//  Created by Jawaun Brown on 5/23/18.
//  Copyright © 2018 Jawaun Brown. All rights reserved.
//

import SpriteKit

class GameplayScene: SKScene{
    var player: Player?;
    var canMove = false;
    var moveLeft = false;
    var center: CGFloat?;
    override func didMove(to view: SKView) {
        center = (self.scene?.size.width)! / (self.scene?.size.height)!;
        player = self.childNode(withName: "Player");
    }
    override func update(_ currentTime: TimeInterval) {
        managePlayer();
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in: self);
            if location.x > center!{
                moveLeft = false;
            } else {
                moveLeft = true;
            }
        }
        canMove=true;
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        canMove=false;
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    func managePlayer(){
        if canMove {
            player?.movePlayer(moveLeft: moveLeft);
        }
    }
    
}
