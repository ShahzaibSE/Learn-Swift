//
//  PlaySoundsViewController.swift
//  PitchPerfact
//
//  Created by Danish Rehman on 18/11/2018.
//  Copyright © 2018 Danish Rehman. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    
    @IBOutlet var SlowBtnOut: UIButton!
    
    @IBOutlet var FastBtnOut: UIButton!

    @IBOutlet var HeighPitchBtnOut: UIButton!
    
    @IBOutlet var LowPitchBtnOut: UIButton!
    
    @IBOutlet var EchoBtnOut: UIButton!
    
    @IBOutlet var ReverbBtnOut: UIButton!
    
    @IBOutlet var stopBtnOut: UIButton!
    
    var recordedAudioURL:URL!
    
    var audioEngine : AVAudioEngine!
    
    var audioFile : AVAudioFile!
    
    var audioPlayerNode : AVAudioPlayerNode!
    
    var stopTimer:Timer!
    
    enum buttonType:Int {
        case slow = 0,fast,heighPitch,lowPitch,echo,reverbe
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        stopBtnOut.isEnabled = false
    }
    
    
    @IBAction func playBtn(_ sender: UIButton) {
        print(sender.tag)
        
        switch buttonType.init(rawValue: sender.tag)! {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .heighPitch:
            playSound(pitch: 1000)
        case .lowPitch:
            playSound(pitch: -200)
        case .echo:
            playSound(echo: true)
        case .reverbe:
            playSound(reverb: true)
        
        }
    }
    
    
    
    
    @IBAction func stopBtn(_ sender: Any) {
        stopAudio()
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
