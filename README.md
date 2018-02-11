# NotificationUserInfoModel

[![CI Status](http://img.shields.io/travis/dannys42/NotificationUserInfoModel.svg?style=flat)](https://travis-ci.org/dannys42/NotificationUserInfoModel)
[![Version](https://img.shields.io/cocoapods/v/NotificationUserInfoModel.svg?style=flat)](http://cocoapods.org/pods/NotificationUserInfoModel)
[![License](https://img.shields.io/cocoapods/l/NotificationUserInfoModel.svg?style=flat)](http://cocoapods.org/pods/NotificationUserInfoModel)
[![Platform](https://img.shields.io/cocoapods/p/NotificationUserInfoModel.svg?style=flat)](http://cocoapods.org/pods/NotificationUserInfoModel)

## Description
NotificationUserInfoModel is a simple set of convenience protocols  to make passing data via NotificationCenter more Swift-like.

There are plenty of other NotificationCenter wrappers out there.  NotificationUserInfoModel is not intended to compete with them.  Rather, if you plan on using NotificationCenter API's as-is, then this simply helps reduce some boiler-plate code that may be error-prone.

## Example

By declaring your NotificaitonUserInfoModel and creating the approprite serializer and deserializer methods, you can easily interface with NotificationCenter:


### Declare Model
```swift
struct MyNoteModel {
    // add data fields here
    public var exampleString: String
}
```

### Observer
```swift
@objc public func notificationObserver(_ note: Notification) {
    guard let myModel = MyNoteModel(note) else { return }

    /* use myModel  */
}
```

### Emitter
```swift
let model = MyNoteModel(exampleString: "Example")
NotificationCenter.default.post(name: .ExampleNotification, object: nil, userInfo: model)
````

For a complete a more complete example, please see the included sample project.

- [Model Declaration](https://github.com/dannys42/NotificationUserInfoModel/blob/master/Example/NotificationUserInfoModel/ProgressNoteModel.swift)
- [Emitter](https://github.com/dannys42/NotificationUserInfoModel/blob/master/Example/NotificationUserInfoModel/ProgressOp.swift)
- [Observer](https://github.com/dannys42/NotificationUserInfoModel/blob/master/Example/NotificationUserInfoModel/ViewController.swift)

## Example Project

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Tested on Xcode 9.2, Swift 4, iOS 10.

## Installation

NotificationUserInfoModel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NotificationUserInfoModel'
```

## Author

Danny Sung <danny@dannysung.com>

## License

NotificationUserInfoModel is available under the MIT license. See the LICENSE file for more info.
