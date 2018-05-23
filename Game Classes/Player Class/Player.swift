//
//  Player.swift
//  Jack The Giant
//
//  Created by Jawaun Brown on 5/23/18.
//  Copyright © 2018 Jawaun Brown. All rights reserved.
//

import SpriteKit
class Player: SKSpriteNode{
    func movePlayer(moveLeft: Bool){
        if moveLeft{
            self.position.x = self.position.x-7;
        } else{
            self.position.x=self.position.x+7

        }
    }
}
