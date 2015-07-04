//
//  RadiusImageView.swift
//  VideoTest
//
//  Created by Kyle Brooks Robinson on 7/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

@IBDesignable class RadiusImageView: UIImageView {
    
    @IBInspectable var imageViewRadius: CGFloat = 15 {
        
        didSet {
            
            self.layer.cornerRadius = imageViewRadius
            self.layer.masksToBounds = true
            
        }
        
    }
    
}