//
//  NotificationCenterExtensions.swift
//  NotificationUserInfoModel
//
//  Created by Danny Sung on 02/09/2018.
//

import Foundation

public extension NotificationCenter {
    public func post(name aName: NSNotification.Name,
              object anObject: Any?,
              userInfo model: NotificationUserInfoSerializer? = nil)
    {
        self.post(name: aName, object: anObject, userInfo: model?.userInfo)
    }
}
