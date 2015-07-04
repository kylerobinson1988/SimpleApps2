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

    @IBOutlet weak var capturedVideo: RadiusImageView!
    
    var vidPlayer: MPMoviePlayerController?
    var videoData: NSData?
    var videoURL: NSURL?
      
    override func viewDidLoad() {
        super.viewDidLoad()

        if videoData != nil {
            
            vidPlayer = MPMoviePlayerController(contentURL: videoURL)
            vidPlayer?.controlStyle = MPMovieControlStyle.None
            vidPlayer?.view.frame = capturedVideo.frame
            vidPlayer?.scalingMode = MPMovieScalingMode.AspectFit
            vidPlayer?.view.transform = CGAffineTransformMakeScale(-1.0, 1.0)
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playVid() {
        
        vidPlayer?.play()
        
        // Code to hide/animate away the button when playback starts.
        
        
    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func s3ButtonPressed(sender: AnyObject) {
    }
    

}
