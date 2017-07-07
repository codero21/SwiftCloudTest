//
//  SwiftCloudTestDocument.swift
//  SwiftCloudTest
//
//  Created by Rollin Francois on 7/7/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit


// MARK: enums

enum DocumentReadError: Error {
    case InvalidInput
}


enum DocumentWriteError: Error {
    case NoContentToSave
}


// MARK: class

class SwiftCloudTestDocument: UIDocument {
    var documentContents: String?
    
    override init(fileURL url: URL) {
        super.init(fileURL: url)
    }
    
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        if let castedContents = contents as? NSData {
            documentContents = NSString(data: castedContents as Data, encoding: String.Encoding.utf8.rawValue) as String?
            
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "refreshDocumentPreview"), object: self)
        } else {
            documentContents = nil
            throw DocumentReadError.InvalidInput
        }
    }
    
    override func contents(forType typeName: String) throws -> Any {
        if documentContents == nil {
            throw DocumentWriteError.NoContentToSave
        }
        
        return documentContents!.data(using: String.Encoding.utf8)!
    }
    
    
}
