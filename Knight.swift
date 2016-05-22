//
//  Knight.swift
//  oop-attack-game
//
//  Created by Michelle Russell on 5/21/16.
//  Copyright © 2016 bananapps. All rights reserved.
//

import Foundation

class Knight: Character{
    
    override var type: String {
        
        return "Knight"
        
    }
    
    convenience init() {
        
        self.init(hp: 120, atkPwr: 20, numAtks: 4, atkChance: 3)
        
    }
    
    override func calculateDamage() -> Int{
        let SCALE_MIN = self.atkPwr - 10
        let SCALE_MAX = self.atkPwr + 10
        let rand = Int(arc4random_uniform(UInt32(SCALE_MAX - SCALE_MIN)))
        return SCALE_MIN + rand
    }
    
    
}