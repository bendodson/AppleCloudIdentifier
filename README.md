# AppleCloudIdentifier
Simple Swift 5 class to fetch the CloudKit identifier for currently logged in user and app. This is useful for creating loginless user accounts within your app.

## Setup
1. Add the AppleCloudIdentifier.swift file to your project
2. Go to the Capabilities tab within Xcode and turn iCloud to "ON". Enable the CloudKit service and use the default container.

## Example Usage
    AppleCloudIdentifier.fetch { (handler) in
        switch handler {
        case .success(let token):
            print("CLOUD TOKEN: \(token)")
        case .failure(let error):
            print("ERROR: \(error)")
        }
    }

For more details, read the [related article on my blog](https://bendodson.com/weblog/2016/07/10/passwordless-user-accounts-within-ios-apps/).
