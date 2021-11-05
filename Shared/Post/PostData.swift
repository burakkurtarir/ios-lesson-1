//
//  PostData.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 20.09.2021.
//

import Foundation

struct PostResponse: Codable {
    var results: [PostData]
}

struct PostData: Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
