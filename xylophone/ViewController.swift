//
//  ViewController.swift
//  xylophone
//
//  Created by Ravi Bhooshan on 27/12/18.
//  Copyright © 2018 Ravi Bhooshan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        }


    @IBAction func nodePressed(_ sender: UIButton) {
    
        // testing button pressed tag
        print(sender.tag)
        
        let path = Bundle.main.path(forResource: "note\(sender.tag)", ofType : "wav")!
        let url = URL(fileURLWithPath : path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
            
        } catch {
            
            print ("There is an issue with this code!")
            
        }
    
}



}
