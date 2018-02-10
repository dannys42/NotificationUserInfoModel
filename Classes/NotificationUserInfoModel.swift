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
    init?(_ userInfo: [String:Any])
    init?(_ userInfo: [AnyHashable:Any])
    init?(_ userInfo: [AnyHashable:Any]?)
    init?(_ note: Notification)
}

public extension NotificationUserInfoDeserializer {
    init?(_ userInfo: [AnyHashable:Any]?) {
        guard let userInfo = userInfo else { return nil }
        
        self.init(userInfo)
    }
    init?(_ userInfo: [AnyHashable:Any]) {
        guard let userInfo = userInfo as? [String:Any] else { return nil }
        self.init(userInfo)
    }
    init?(_ note: Notification) {
        self.init(note.userInfo)
    }
}

public protocol NotificationUserInfoModel: NotificationUserInfoSerializer, NotificationUserInfoDeserializer {
}
