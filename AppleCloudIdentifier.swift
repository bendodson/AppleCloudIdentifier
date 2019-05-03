//
//  AppleCloudIdentifier.swift
//
//  Created by Ben Dodson on 10/07/2016.
//

import UIKit
import CloudKit

enum AppleCloudIdentifierError: Error {
    case unknown
}

class AppleCloudIdentifier: NSObject {
    
    class func fetch(_ completionHandler: @escaping (Result<String, Error>) -> Void) {
        let container = CKContainer.default()
        container.fetchUserRecordID { (recordID, error) in
            guard let recordID = recordID else {
                completionHandler(.failure(error ?? AppleCloudIdentifierError.unknown))
                return
            }
            completionHandler(.success(recordID.recordName))
        }
    }
    
}
