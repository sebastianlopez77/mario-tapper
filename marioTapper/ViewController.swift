//
//  ViewController.swift
//  marioTapper
//
//  Created by Sebastian Lopez on 18/5/16.
//  Copyright © 2016 Sebastian Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var logoImg: UIImageView!
    @IBOutlet var howManyTapsTxt: UITextField!
    @IBOutlet var playBtn: UIButton!
    
    @IBOutlet var tabBtn: UIButton!
    @IBOutlet var tapsLabel: UILabel!

    @IBAction func hiddeItems(sender: AnyObject) {
        logoImg.hidden = true
        howManyTapsTxt.hidden = true
        playBtn.hidden = true
        
        tabBtn.hidden = false
        tapsLabel.hidden = false
    }
}

