//
//  TodoModel.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 16.09.2021.
//

import Foundation
import SwiftUI

struct TodoModel : Hashable, Codable, Identifiable {
    var id: Int
    var text : String
    var isCompleted : Bool
}
