//
//  VideoCamViewController.swift
//  VideoTest
//
//  Created by Kyle Brooks Robinson on 7/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit
import MediaPlayer
import AVFoundation
import MobileCoreServices

class VideoCamViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var videoView: UIImageView!
    @IBOutlet weak var startButton: CustomButton!
    @IBOutlet weak var stopButton: CustomButton!
    @IBOutlet weak var flipButton: CustomButton!
    @IBOutlet weak var backButton: CustomButton!
    
    var videoPick = UIImagePickerController()
    
    var videoData: NSData?
    var timer: NSTimer?
    
    var vidPlayer: MPMoviePlayerController?
    var vidPreview: UIImageView?
    
    var saveVideoVC: SaveVideoViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stopButton.hidden = true
        
        videoPick.sourceType = .Camera
        videoPick.cameraDevice = .Rear
        videoPick.mediaTypes = [kUTTypeMovie]
        videoPick.cameraCaptureMode = .Video
        videoPick.videoQuality = UIImagePickerControllerQualityType.TypeHigh
        videoPick.delegate = self
        videoPick.showsCameraControls = false
        videoPick.view.frame = videoView.frame
        videoView.addSubview(videoPick.view)
        
        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        println("Here's my Info from the VideoCamViewController: \(info)")
        
        
        if let vidURL = info[UIImagePickerControllerMediaURL] as? NSURL {
            
            videoData = NSData(contentsOfURL: vidURL)
            
            saveVideoVC = storyboard?.instantiateViewControllerWithIdentifier("saveVideoVC") as? SaveVideoViewController
            
            saveVideoVC!.videoData = videoData
            saveVideoVC!.videoURL = vidURL
            
            self.navigationController?.pushViewController(saveVideoVC!, animated: true)
            
        }
        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        picker.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func stopRecording() {
        
//        timer?.invalidate()
//        videoPick.stopVideoCapture()
//        stopButton.hidden = true
//        startButton.hidden = false
//        
//        let saveVideoVC = storyboard?.instantiateViewControllerWithIdentifier("saveVideoVC") as! SaveVideoViewController
        
    }
    
    func updateSecondsLeft() {
        
        timer?.invalidate()
        stopRecording()
        return
        
    }
    
    
    func takeVideo() {
        
        videoPick.videoMaximumDuration = 20
        videoPick.startVideoCapture()
//        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: nil, userInfo: nil, repeats: true)
        
    }
    
    @IBAction func recordButtonPressed(sender: AnyObject) {
        
        startButton.hidden = true
        stopButton.hidden = false
        flipButton.hidden = true
        
        takeVideo()
        
    }
    
    @IBAction func stopButtonPressed(sender: AnyObject) {
        
        stopButton.hidden = true
        startButton.hidden = false
        videoPick.stopVideoCapture()
        
    }
    
    @IBAction func flipButtonPressed(sender: AnyObject) {
        
        println(videoPick.cameraDevice.rawValue)
        
        if videoPick.cameraDevice == .Front {
            
            videoPick.cameraDevice = .Rear
            
        } else {
            
            videoPick.cameraDevice = .Front
            
        }
        
    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        
        imagePickerControllerDidCancel(videoPick)
        navigationController?.popToRootViewControllerAnimated(true)
        
    }
    
}

