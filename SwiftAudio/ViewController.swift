//
//  ViewController.swift
//  SwiftAudio
//
//  Created by Igor Barinov on 11/5/14.
//  Copyright (c) 2014 Igor Barinov. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    var helloSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("1", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer = AVAudioPlayer(contentsOfURL: helloSound, error: nil)
        audioPlayer.prepareToPlay()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func helloButton(sender: AnyObject) {
        audioPlayer.play()
    }
    
}