//
//  TaskData.swift
//  OpenAI ToDo
//
//  Created by Virinchi Puvvada on 20/03/24.
//

import Foundation

struct Task: Hashable, Identifiable {
    var id: String
    var name: String
    var paras: [Para]
    var prompt: String
    var status: Bool = false
}

struct Para: Hashable {
    var type: String
    var value: String
    var id: String?
}
