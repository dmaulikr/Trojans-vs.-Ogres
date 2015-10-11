//
//  ViewController.swift
//  rpg-activity
//
//  Created by Jake Krajewski on 10/10/15.
//  Copyright © 2015 Jake Krajewski. All rights reserved.
//

import UIKit
import AVFoundation

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
    var attackSound: AVAudioPlayer!
    var music: AVAudioPlayer!
    var winSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameInit()
        playMusic()
        playWinSound()
        
    }
    
    @IBAction func plr1AttackPressed(sender: AnyObject) {
        playHitSound()
        player2.wasAttacked(22)
        
        if player2.isAlive {
            messageLbl.text = "\(player1.name) attacks!"
            rightPlrHpLbl.text = "\(player2.hp) HP"
            leftPlrBtn.enabled = false
            rightPlrBtn.enabled = true
        } else {
            playWinSound()
            messageLbl.text = "\(player1.name) Wins!"
            rightPlrHpLbl.text = "LOSE"
            leftPlrBtn.enabled = false
            rightPlrBtn.enabled = false
            victoryPlayAgain.hidden = false

        }
        
    }
    
    @IBAction func plr2AttackPressed(sender: AnyObject) {
        playHitSound()
        player1.wasAttacked(23)
        
        if player1.isAlive {
            messageLbl.text = "\(player2.name) attacks!"
            leftPlrHpLbl.text = "\(player1.hp) HP"
            rightPlrBtn.enabled = false
            leftPlrBtn.enabled = true
        } else {
            playWinSound()
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
        player2 = Player(player: 2, race: "Spartan", name: "Sparta")
        
        player1.hpReset()
        player2.hpReset()
        
        leftPlrHpLbl.text = "\(player1.hp) HP"
        rightPlrHpLbl.text = "\(player2.hp) HP"
        leftPlrBtn.enabled = true
        rightPlrBtn.enabled = true
        
        victoryPlayAgain.hidden = true
        
        messageLbl.text = "Get ready to fight!"
    }
    
    func playHitSound() {
        
        var rand = Int(arc4random_uniform(4))
    
        let path = NSBundle.mainBundle().pathForResource("Hit_Hurt\(rand)", ofType: "wav")
        print(rand)
        let url = NSURL(fileURLWithPath: path!)
        
        do {
            try attackSound = AVAudioPlayer(contentsOfURL: url)
            attackSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        attackSound.play()
    }
    
    func playMusic() {
        let path = NSBundle.mainBundle().pathForResource("03 Chibi Ninja", ofType: "mp3")
        let url = NSURL(fileURLWithPath: path!)
        
        do {
            try music = AVAudioPlayer(contentsOfURL: url)
            music.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        music.play()
        music.numberOfLoops = -1
    }
    
    func playWinSound(){
        let path = NSBundle.mainBundle().pathForResource("Pickup_Coin", ofType: "wav")
        let url = NSURL(fileURLWithPath: path!)
        
        do{
            try winSound = AVAudioPlayer(contentsOfURL: url)
            winSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        winSound.play()
    }

    
}