//
//  CircleButton.swift
//  Reaction
//
//  Created by Kyle Brooks Robinson on 7/1/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

@IBDesignable class CircleButton: UIButton {

    var choice: Int!
    
    @IBInspectable var fillColor: UIColor = UIColor.whiteColor()
    
    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        fillColor.set()
        
        CGContextFillEllipseInRect(context, rect)
        
    }

}
