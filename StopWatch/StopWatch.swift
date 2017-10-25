//
//  StopWatch.swift
//  StopWatch
//
//  Created by Maribel Montejano on 10/24/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import Foundation

// MODEL
class StopWatch {
    var startTime: Date?
    
    func start() {
        // Record the current time to startTime
        startTime = Date()
    }
    
    func stop() {
        // Set the start time back to nil (watch is no longer running)
        startTime = nil
    }
    
    func elapsedTime() -> TimeInterval {
        if startTime == nil {
            return 0
        } else {
            // Know it's not nil, so can safely unwrap it
            return startTime!.timeIntervalSinceNow * -1
        }
    }
    
    func isRunning() -> Bool {
        if startTime != nil {
            return true
        } else {
            return false
        }
    }
}
