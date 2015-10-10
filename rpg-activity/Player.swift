//
//  Player.swift
//  rpg-activity
//
//  Created by Jake Krajewski on 10/10/15.
//  Copyright © 2015 Jake Krajewski. All rights reserved.
//

import Foundation

class Player : Character {
    var id: Int = 1
    var character: String
    
    init(character: String){
        self.character = character
    }
}