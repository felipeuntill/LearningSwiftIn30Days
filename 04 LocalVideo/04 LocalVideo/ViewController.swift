//
//  ViewController.swift
//  04 LocalVideo
//
//  Created by Felipe Assunção on 4/11/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    let fileUrl = NSURL(fileURLWithPath: "/Users/felipeassuncao/Development/Projects/LearningSwiftIn30Days/04 LocalVideo/04 LocalVideo/SampleVideo_1280x720_1mb.mp4")
    
    @IBAction func startVideo(sender: UIButton) {
    
        playerView = AVPlayer(URL: fileUrl)
        playerViewController.player = playerView
        
        self.presentViewController(playerViewController, animated: true)
        {
            self.playerViewController.player?.play()
        }
    }
}

