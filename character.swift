//
//  character.swift
//  rpg-activity
//
//  Created by Jake Krajewski on 10/10/15.
//  Copyright © 2015 Jake Krajewski. All rights reserved.
//

import Foundation

class Character {
    private var _name: String
    private var _attPwr: Int = 12
    private var _hp: Int = 100
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if _hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    
    init(name: String) {
        _name = name
    }
    
}