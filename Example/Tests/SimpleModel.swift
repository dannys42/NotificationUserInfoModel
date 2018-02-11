//
//  SimpleModel.swift
//  NotificationUserInfoModel_Example
//
//  Created by Danny Sung on 02/10/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import NotificationUserInfoModel

// Declare your notification names
extension NSNotification.Name {
    static let SimpleNotification = Notification.Name("SimpleNotification")
}

// Define your userInfo model
struct SimpleNoteModel {
    public var string: String
}

// Create an enum for every entry in your model
fileprivate enum SimpleNoteModelFields: String {
    case string
}


/** Uncomment here and the build will fail???
 
// Create your serializer and deserializer
extension SimpleNoteModel: NotificationUserInfoModel {
    
    // Your serializer should create a dictionary with keys in your *Fields enum
    var userInfo: [String : Any] {
        get {
            return [
                SimpleNoteModelFields.string.rawValue : self.string,
            ]
        }
    }
    
    // Your deserializer should extract all the *Fields from the dictionary
    init?(_ userInfo: [String : Any]) {
        guard let string = userInfo[SimpleNoteModelFields.string.rawValue] as? String else { return nil }

        self.string = string
    }
}
*/


extension SimpleNoteModel: Equatable {
    static func == (lhs: SimpleNoteModel, rhs: SimpleNoteModel) -> Bool {
        guard lhs.string == rhs.string else { return false }
        return true
    }
}

