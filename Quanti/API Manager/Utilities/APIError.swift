//
//  APIError.swift
//  Quanti
//
//  Created by IvanQ on 19.06.2022.
//

import Foundation

enum APIError: Error, LocalizedError {
case invalidURLComponents
case noResponse
case unacceptableResponseStatusCode
case customDecodingFailed
}
