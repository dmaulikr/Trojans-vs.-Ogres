//
//  ViewController.swift
//  rpg-activity
//
//  Created by Jake Krajewski on 10/10/15.
//  Copyright © 2015 Jake Krajewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectStackView: UIStackView!
    
    @IBOutlet weak var selectOgre: UIImageView!
    
    @IBOutlet weak var selectSoldier: UIImageView!
    
    @IBOutlet weak var playerOneImg: UIImageView!

    @IBOutlet weak var playerTwoImg: UIImageView!
    
    @IBOutlet weak var statusLbl: UILabel!
    
    var player1: Character!
    var player2: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player1 = Character(startingHP: 100, attackPwr: 20)
        player2 = Character(startingHP: 100, attackPwr: 20)
        
        // prompt a player to select their fighter.
            // find out what fighter it is, player.id (1 or 2)
        // let them select a character.
            //store the character in player.id.
        // when they select a player, repeat for next player
        // when this player has selected, move to next game state.
    }
    
    @IBAction func pressedOgreSelect(sender: AnyObject) {
        
    }
    
    @IBAction func pressedSoldierSelect(sender: AnyObject) {
    }
    
    @IBAction func playerTwoAttacked(sender: AnyObject) {
    }
    
    @IBAction func playerOneAttacked(sender: AnyObject) {
        
    }

}

