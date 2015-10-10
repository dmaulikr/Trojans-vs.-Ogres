//
//  Character.swift
//  rpg-activity
//
//  Created by Jake Krajewski on 10/10/15.
//  Copyright © 2015 Jake Krajewski. All rights reserved.
//

import Foundation

class Character {
    var _hp: Int = 1000
    var _attackPwr: Int = 12
    var name: String = "Player"
    
    
    var attackPwr: Int {
        return _attackPwr
    }
    
    var hp:Int {
        return _hp
    }
    
    init(startingHP: Int, attackPwr: Int){
        self._hp = startingHP
        self._attackPwr = attackPwr
    }
    
}