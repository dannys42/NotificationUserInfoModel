//
//  ProgressNoteModel.swift
//  NotificationUserInfoModel_Example
//
//  Created by Danny Sung on 02/09/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import NotificationUserInfoModel

// Declare your notification names
extension NSNotification.Name {
    static let ExampleProgress = Notification.Name("ExampleProgress")
}

// Define your userInfo model
struct ProgressNoteModel {
    public var progress: Float
    public var stage: String
}

// Create an enum for every entry in your model
fileprivate enum ProgressNoteModelFields: String {
    case progress
    case stage
}


// Create your serializer and deserializer
extension ProgressNoteModel: NotificationUserInfoModel {
    
    // Your serializer should create a dictionary with keys in your *Fields enum
    var userInfo: [String : Any] {
        get {
            return [
                ProgressNoteModelFields.progress.rawValue : self.progress,
                ProgressNoteModelFields.stage.rawValue : self.stage,
            ]
        }
    }
    
    // Your deserializer should extract all the *Fields from the dictionary
    init?(_ userInfo: [String : Any]) {
        guard let progress = userInfo[ProgressNoteModelFields.progress.rawValue] as? Float else { return nil }
        guard let stage = userInfo[ProgressNoteModelFields.stage.rawValue] as? String else { return nil }
        
        self.progress = progress
        self.stage = stage
    }
}
