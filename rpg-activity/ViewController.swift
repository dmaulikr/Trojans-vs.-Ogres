//
//  ViewController.swift
//  rpg-activity
//
//  Created by Jake Krajewski on 10/10/15.
//  Copyright © 2015 Jake Krajewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLbl: UILabel!

    @IBOutlet weak var leftPlrHpLbl: UILabel!
    
    @IBOutlet weak var rightPlrHpLbl: UILabel!
    
    @IBOutlet weak var leftPlrImg: UIImageView!
    
    @IBOutlet weak var rightPlrImg: UIImageView!
    
    @IBOutlet weak var leftPlrBtn: UIButton!
    
    @IBOutlet weak var rightPlrBtn: UIButton!
    
    @IBOutlet weak var victoryPlayAgain: UIStackView!
    
    
    var player1: Player!
    var player2: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameInit()
        
    }
    
    @IBAction func plr1AttackPressed(sender: AnyObject) {
        
        player2.wasAttacked(12)
        
        if player2.isAlive {
            messageLbl.text = "\(player1.name) attacks!"
            rightPlrHpLbl.text = "\(player2.hp) HP"
            leftPlrBtn.enabled = false
            rightPlrBtn.enabled = true
        } else {
            messageLbl.text = "\(player1.name) Wins!"
            rightPlrHpLbl.text = "LOSE"
            leftPlrBtn.enabled = false
            rightPlrBtn.enabled = false
            victoryPlayAgain.hidden = false

        }
        
    }
    
    @IBAction func plr2AttackPressed(sender: AnyObject) {
        player1.wasAttacked(13)
        
        if player1.isAlive {
            messageLbl.text = "\(player2.name) attacks!"
            leftPlrHpLbl.text = "\(player1.hp) HP"
            rightPlrBtn.enabled = false
            leftPlrBtn.enabled = true
        } else {
            messageLbl.text = "\(player2.name) Wins!"
            leftPlrHpLbl.text = "LOSE"
            leftPlrBtn.enabled = false
            rightPlrBtn.enabled = false
            victoryPlayAgain.hidden = false


        }
    }
    @IBAction func playAgainPressed(sender: AnyObject) {
        gameInit()
    }
    
    func gameInit(){
        player1 = Player(player: 1, race: "Troll", name: "Rocky")
        player2 = Player(player: 2, race: "Spartan", name: "Bilbo")
        
        player1.hpReset()
        player2.hpReset()
        
        leftPlrHpLbl.text = "\(player1.hp) HP"
        rightPlrHpLbl.text = "\(player2.hp) HP"
        leftPlrBtn.enabled = true
        rightPlrBtn.enabled = true
        
        victoryPlayAgain.hidden = true
        
        messageLbl.text = "Get ready to fight!"
    }

    
}