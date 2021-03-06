//
//  ViewController.swift
//  StopWatch
//
//  Created by Maribel Montejano on 10/24/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    // Create an instance of StopWatch object as a property of ViewController class
    var watch = StopWatch()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButton(_ sender: UIButton) {
        print("start button tapped")
        // Begin stopwatch
        if !watch.isRunning() {
            // Not running, so need to start timer
            watch.start()
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateElapsedTime), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        print("stop button tapped")
        if watch.isRunning() {
            // It's running, so need to stop it
            watch.stop()
            // Stops the receiver from firing again
            timer.invalidate()
        }
    }

    func updateElapsedTime() {
        print(watch.elapsedTime())
        timerLabel.text = String(format: "%.2f", watch.elapsedTime())
    }
}

