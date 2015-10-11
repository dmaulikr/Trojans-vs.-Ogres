//
//  Players.swift
//  rpg-activity
//
//  Created by Jake Krajewski on 10/10/15.
//  Copyright © 2015 Jake Krajewski. All rights reserved.
//

import Foundation

class Player {
    
    private var _hp: Int = 100
    private var _atkPwr: Int = 18
    private var _name: String = "Gulag"
    private var _plrOneOrTwo: Int = 1
    private var _race: String = "Ogre"
    
    var hp: Int {
        return _hp
    }
    
    var atkPwr: Int {
        return _atkPwr
    }
    
    var name: String {
        return _name
    }
    
    var playerNumber: Int {
        return _plrOneOrTwo
    }
    
    var race: String {
        return _race
    }
    
    init(){
        
    }
    
    init(player: Int, race: String, name: String){
        self._plrOneOrTwo = player
        self._race = race
        self._name = name
    }
    
    var isAlive: Bool {
        if _hp >= 0 {
            return true
        } else {
            return false
        }
    }
    
    func wasAttacked(atkPwr: Int) {
        
        self._hp -= atkPwr
    }
    
    func hpReset(){
        _hp = 100
    }
    
}