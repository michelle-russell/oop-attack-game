//
//  Character.swift
//  oop-attack-game
//
//  Created by Michelle Russell on 5/21/16.
//  Copyright © 2016 bananapps. All rights reserved.
//

import Foundation

class Character{
    
    // Variables
    private var _hp = 100
    private var _atkPwr = 10
    private var _type = "Character"
    private var _numAttacks: Int
    private var _attackChance: Int
    
    // Getters and Setters
    var hp: Int {
        get{
            return _hp
        }
        set{
            _hp = newValue
        }
    }
    
    var atkPwr: Int {
        get{
            return _atkPwr
        }
        set{
            _atkPwr = newValue
        }
    }
    
    var type: String{
        
        return _type
    }
    
    var numAttacks: Int{
        return _numAttacks
    }
    
    var attackChance: Int{
        return _attackChance
    }
    
    
    // Computed variable
    var isAlive:Bool{
        
        if _hp > 0{
            return true
        }else{
            return false
        }
    }
    
    // Initializer
    init(hp: Int, atkPwr: Int, numAtks: Int, atkChance: Int){
        
        self._hp = hp
        self._atkPwr = atkPwr
        self._numAttacks = numAtks
        self._attackChance = atkChance
        
    }
    
    // Functions
    func beAttacked(enemyAtkPwr: Int) -> Bool{
        
        _hp -= enemyAtkPwr
        return true
    }
    
    func chanceToHit() -> Bool {
        let rand = Int(arc4random_uniform(UInt32(numAttacks)))
        if rand <= attackChance - 1 {
            return true
        } else {
            return false
        }
    }
    
    func calculateDamage() -> Int {
        return self.atkPwr
    }
    
    
}