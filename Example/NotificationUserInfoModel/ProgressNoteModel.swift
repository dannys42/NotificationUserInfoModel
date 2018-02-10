//
//  ProgressNoteModel.swift
//  NotificationUserInfoModel_Example
//
//  Created by Danny Sung on 02/09/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import NotificationUserInfoModel

extension NSNotification.Name {
    static let ExampleProgress = Notification.Name("ExampleProgress")
}

struct ProgressNoteModel {
    public var progress: Float
    public var stage: String
}

fileprivate enum ProgressNoteModelFields: String {
    case progress
    case stage
}


extension ProgressNoteModel: NotificationUserInfoModel {
    var userInfo: [String : Any] {
        get {
            return [
                ProgressNoteModelFields.progress.rawValue : self.progress,
                ProgressNoteModelFields.stage.rawValue : self.stage,
            ]
        }
    }
    
    init?(userInfo: [String : Any]) {
        guard let progress = userInfo[ProgressNoteModelFields.progress.rawValue] as? Float else { return nil }
        guard let stage = userInfo[ProgressNoteModelFields.stage.rawValue] as? String else { return nil }
        
        self.progress = progress
        self.stage = stage
    }
}
