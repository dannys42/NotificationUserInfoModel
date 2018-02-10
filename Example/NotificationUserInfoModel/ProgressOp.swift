//
//  ProgressOp.swift
//  NotificationUserInfoModel_Example
//
//  Created by Danny Sung on 02/09/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class ProgressOp: Operation {
    override func main() {
        while(!self.isCancelled) {
            var progress: Float = 0
            var stage: String = "n/a"
            
            // Do something a little more interested to show off the notification userInfo model
            repeat {
                progress += 0.1
                if progress < 0.1 {
                    stage = "initializing"
                } else if progress < 0.25 {
                    stage = "getting started"
                } else if progress < 0.5 {
                    stage = "making headway"
                } else if progress < 0.75 {
                    stage = "over the hump"
                } else if progress < 0.9 {
                    stage = "almost there"
                } else {
                    stage = "finishing up"
                }
                self.publish(progress: progress, stage: stage)
                Thread.sleep(forTimeInterval: 0.1)
            } while progress < 1.0
        }
    }
    
    func publish(progress: Float, stage: String) {
        let noteCenter = NotificationCenter.default
        
        let progressModel = ProgressNoteModel(progress: progress, stage: stage)
        // A convenience method is provided so you can simply pass the model as your userInfo
        noteCenter.post(name: .ExampleProgress, object: nil, userInfo: progressModel)
    }
}
