//
//  ViewController.swift
//  Music
//
//  Created by 渡辺航太郎 on 2019/04/03.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func natsuPlayButton() {
        setAudioPlayer(SoundName: "natsu", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func amePlayButton() {
        setAudioPlayer(SoundName: "ame", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func akiPlayButton() {
        setAudioPlayer(SoundName: "aki", type: "mp3")
        audioPlayer.play()
    }
    
    func setAudioPlayer(SoundName: String, type: String ) {
        
        let soundFilePath = Bundle.main.path(forResource: SoundName, ofType: type)!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
        } catch {
            print("音楽ファイルが読み込めませんでした")
        }
    }
}

