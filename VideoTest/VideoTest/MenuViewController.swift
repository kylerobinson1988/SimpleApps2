//
//  ViewController.swift
//  VideoTest
//
//  Created by Kyle Brooks Robinson on 7/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let loadImage = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        let videoInfo = info[UIImagePickerControllerEditedImage] as! UIImage
        
//        if mediaType == "public.movie"
//        
//        let selectedVideo = info[
//        
//        saveVideoVC = storyboard?.instantiateViewControllerWithIdentifier("saveVideoVC") as? SaveVideoViewController
//        
//        saveVideoVC!.videoURL = vidURL
//        saveVideoVC!.videoStillImage = videoStillImage
//        
//        self.navigationController?.pushViewController(saveVideoVC!, animated: true)

        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        loadImage.dismissMoviePlayerViewControllerAnimated()
        
    }

    @IBAction func loadVideoButtonPressed(sender: AnyObject) {
        
        loadImage.delegate = self
        loadImage.allowsEditing = false
        loadImage.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
    }

}

