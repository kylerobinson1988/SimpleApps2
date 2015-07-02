//
//  ViewController.swift
//  Money
//
//  Created by Kyle Brooks Robinson on 7/2/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit
import iAd
import MoPub

class ViewController: UIViewController, MPAdViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let bannerView = ADBannerView(adType: ADAdType.MediumRectangle)
//        bannerView.frame.origin.y = view.frame.height - bannerView.frame.height
//        println(bannerView.frame)
//        
//        view.addSubview(bannerView)
        
        self.adView.delegate = self
        self.adView.frame = CGRectMake(0, self.view.bounds.size.height - MOPUB_BANNER_SIZE.height,
            MOPUB_BANNER_SIZE.width, MOPUB_BANNER_SIZE.height)
        self.view.addSubview(self.adView)
        self.adView.loadAd()

    
    }
    
    // TODO: Replace this test id with your personal ad unit id
    var adView: MPAdView = MPAdView(adUnitId: "0fd404de447942edb7610228cb412614", size: MOPUB_BANNER_SIZE)

    func viewControllerForPresentingModalView() -> UIViewController {
        return self
    }
    
    

}

