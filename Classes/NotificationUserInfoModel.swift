//
//  NotificationUserInfoModel.swift
//  NotificationUserInfoModel
//
//  Created by Danny Sung on 02/09/2018.
//

import Foundation

public protocol NotificationUserInfoSerializer {
    var userInfo: [String:Any] { get }
}

public protocol NotificationUserInfoDeserializer {
    init?(userInfo: [String:Any])
    init?(userInfo: [AnyHashable:Any])
    init?(userInfo: [AnyHashable:Any]?)
    init?(note: Notification)
}

public extension NotificationUserInfoDeserializer {
    init?(userInfo: [AnyHashable:Any]?) {
        guard let userInfo = userInfo else { return nil }
        
        self.init(userInfo: userInfo)
    }
    init?(userInfo: [AnyHashable:Any]) {
        guard let userInfo = userInfo as? [String:Any] else { return nil }
        self.init(userInfo: userInfo)
    }
    init?(note: Notification) {
        self.init(userInfo: note.userInfo)
    }
}

public protocol NotificationUserInfoModel: NotificationUserInfoSerializer, NotificationUserInfoDeserializer {
}
