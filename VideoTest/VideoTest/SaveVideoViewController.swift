//
//  SaveVideoViewController.swift
//  VideoTest
//
//  Created by Kyle Brooks Robinson on 7/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit
import MediaPlayer
import MobileCoreServices

class SaveVideoViewController: UIViewController {

    @IBOutlet weak var capturedVideo: UIView!
    @IBOutlet weak var playButton: CustomButton!
    @IBOutlet weak var stopButton: CustomButton!
    
    var vidPlayer: MPMoviePlayerController?
    var videoData: NSData?
    var videoURL: NSURL?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if videoData != nil {
            
            println("This stuff should be running.")
            
            vidPlayer = MPMoviePlayerController(contentURL: videoURL)
            vidPlayer?.controlStyle = MPMovieControlStyle.None
            vidPlayer?.view.frame = self.view.frame
            vidPlayer?.scalingMode = MPMovieScalingMode.AspectFit
            capturedVideo.addSubview(vidPlayer!.view)
            
        }
        
        stopButton.hidden = true
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playVid(sender: AnyObject) {
        
        playButton.hidden = true
        stopButton.hidden = false
        vidPlayer?.play()
        
        // Code to hide/animate away the button when playback starts.
        
        
    }
    @IBAction func stopVid(sender: AnyObject) {
    
        playButton.hidden = false
        stopButton.hidden = true
        vidPlayer?.stop()
    
    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func s3ButtonPressed(sender: AnyObject) {
    }
    

}
