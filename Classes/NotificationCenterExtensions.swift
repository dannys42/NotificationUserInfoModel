//
//  NotificationCenterExtensions.swift
//  NotificationUserInfoModel
//
//  Created by Danny Sung on 02/09/2018.
//

import Foundation

public extension NotificationCenter {
    /// Creates a notification with a given name, sender, and information (as NotificationUserInfoModel) and posts it to the notification center.
    ///
    /// - Parameters:
    ///   - aName: The object posting the notification.

    ///   - anObject: The object posting the notification.
    ///   - model: Optional information about the the notification in the form o fan NotificationUserInfoModel.
    public func post(name aName: NSNotification.Name,
              object anObject: Any?,
              userInfo model: NotificationUserInfoSerializer? = nil)
    {
        self.post(name: aName, object: anObject, userInfo: model?.userInfo)
    }
}
