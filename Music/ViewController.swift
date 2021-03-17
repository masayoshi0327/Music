//
//  ViewController.swift
//  Music
//
//  Created by 澤崎正佳 on 2021/03/17.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let music = Bundle.main.bundleURL.appendingPathComponent("A New Orleans Crawfish Boil - Unicorn Heads.mp3")
    
    var player = AVAudioPlayer()

    @IBAction func play(_ sender: Any) {
        do {
            player = try AVAudioPlayer(contentsOf: music, fileTypeHint: nil)
            player.play()
        } catch  {
            print("再生できません")
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        do {
            try player.stop()
        } catch {
            print("停止できません")
        }
    }
    
    
    
    
    
}

