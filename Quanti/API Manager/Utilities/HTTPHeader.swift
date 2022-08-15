//
//  HTTPHeader.swift
//  Quanti
//
//  Created by IvanQ on 19.06.2022.
//

import Foundation

enum HTTPHeader {
    // key
    enum HeaderField: String {
        case contentType = "Content-Type"
    }

    // value
    enum ContentType: String {
        case json = "application/json"
    }
}
