//
//  ViewController.swift
//  PitchPerfact
//
//  Created by Danish Rehman on 18/11/2018.
//  Copyright © 2018 Danish Rehman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet var recordBtnOut: UIButton!
    
    @IBOutlet var stopBtnOut: UIButton!
    
    @IBOutlet var messageLabelOut: UILabel!
    
    
    var audioRecorder:AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        stopBtnOut.isEnabled = false
    }
    
    @IBAction func recordBtn(_ sender: Any) {
        configureRecording()
        
        let directory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        
        let fileName = "audioFile.wav"
        
        let pathArray = [directory,fileName]
        
        let pathURL = URL(string: pathArray.joined(separator: "/"))
        
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setCategory(.playAndRecord, mode: .default, options: .defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: pathURL!, settings: [:])
        
        audioRecorder.delegate = self
        
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
        
        
    }
    
    
    @IBAction func stopBtn(_ sender: Any) {
        configureStopRecording()
        
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false, options: .notifyOthersOnDeactivation)
        audioRecorder.stop()
        
        
    }
    
    func configureStopRecording(){
        stopBtnOut.isEnabled = false
        recordBtnOut.isEnabled = true
        messageLabelOut.text = "Tap to record"
       // self.performSegue(withIdentifier: "toPlaySound", sender: nil)
    }
    
    
    
    func configureRecording(){
        stopBtnOut.isEnabled = true
        recordBtnOut.isEnabled = false
        messageLabelOut.text = "Recording"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlaySound"{
            let destination = segue.destination as! PlaySoundsViewController
            destination.recordedAudioURL = sender as! URL
        }
    }
    

}


extension ViewController:AVAudioRecorderDelegate{
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        self.performSegue(withIdentifier: "toPlaySound", sender: recorder.url)
    }
}
