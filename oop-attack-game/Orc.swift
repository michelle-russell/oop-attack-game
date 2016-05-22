//
//  Orc.swift
//  oop-attack-game
//
//  Created by Michelle Russell on 5/21/16.
//  Copyright © 2016 bananapps. All rights reserved.
//

import Foundation

class Orc: Character {
    
    private let IMMUNITY = 15
    
    override var type: String {
        
        return "Orc"
        
    }
    
    convenience init() {
        
        self.init(hp: 150, atkPwr: 10, numAtks: 4, atkChance: 2)
        
    }
    
    override func beAttacked(enemyAtkPwr: Int) -> Bool {
        if enemyAtkPwr <= IMMUNITY{
            self.hp += 10
            return false
        } else {
            super.beAttacked(enemyAtkPwr)
            return true
        }
    }
    
}