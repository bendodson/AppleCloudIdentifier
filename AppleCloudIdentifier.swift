//
//  AppleCloudIdentifier.swift
//
//  Created by Ben Dodson on 10/07/2016.
//

import UIKit
import CloudKit

class AppleCloudIdentifier: NSObject {
    
    class func fetch(onCompletion completionHandler: (identifier: String?, error: NSError?) -> Void) {
        
        let container = CKContainer.defaultContainer()
        container.fetchUserRecordIDWithCompletionHandler { (recordID, error) in
            guard let recordID = recordID else {
                completionHandler(identifier: nil, error: error)
                return
            }
            completionHandler(identifier: recordID.recordName, error: nil)
        }
    }

}
