//
//  ViewController.swift
//  01_Timer
//
//  Created by Felipe Assunção on 4/8/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Summary:
    // @IBOutlets
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var stop: UIButton!
    @IBOutlet weak var reset: UIButton!

    // Summary:
    // Properties
    var timer = NSTimer()
    var time = 0.0
    
    // Summary:
    // @IBActions
    @IBAction func startCounting(sender: UIButton) {
       timer = NSTimer.scheduledTimerWithTimeInterval(0.6, target:self, selector: #selector(increment), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopCounting(sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func resetCounting(sender: UIButton) {
        timer.invalidate()
        time = 0.0
        counter.text = String(time)
    }
    
    func increment () {
        time += 0.1
        counter.text = String(time)
    }
}

