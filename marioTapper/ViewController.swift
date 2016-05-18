//
//  ViewController.swift
//  marioTapper
//
//  Created by Sebastian Lopez on 18/5/16.
//  Copyright © 2016 Sebastian Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables - Propierties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet var logoImg: UIImageView!
    @IBOutlet var howManyTapsTxt: UITextField!
    @IBOutlet var playBtn: UIButton!
    
    @IBOutlet var tabBtn: UIButton!
    @IBOutlet var tapsLabel: UILabel!
    
    
 
    @IBAction func onQTap(sender: UIButton!) {
        
        currentTaps = currentTaps + 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
        
    }

    @IBAction func hiddeItems(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tabBtn.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        playBtn.hidden = false
        
        tabBtn.hidden = true
        tapsLabel.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLbl() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    

}

