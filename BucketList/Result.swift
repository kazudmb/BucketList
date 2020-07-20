//
//  Result.swift
//  BucketList
//
//  Created by KazukiNakano on 2020/07/21.
//  Copyright © 2020 dmb. All rights reserved.
//

import Foundation

struct Result: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable, Comparable {
    static func < (lhs: Page, rhs: Page) -> Bool {
        lhs.title < rhs.title
    }
    
    var description: String {
        terms?["description"]?.first ?? "No further information"
    }
    
    let pageid: Int
    let title: String
    let terms: [String: [String]]?
}
