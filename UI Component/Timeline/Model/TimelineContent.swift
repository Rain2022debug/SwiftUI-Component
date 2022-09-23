//
//  TimelineContent.swift
//  UI Component
//
//  Created by yuhe on 2022/9/23.
//

import Foundation

enum TimelineContentType {
    case singleMessage(message: String)
    case photoMessage(photo: String, message: String)
}

struct TimelineContent: Identifiable {
    let id: Int
    let nickname: String
    let avatarUrl: String
    let type: TimelineContentType
    let likes: [String]
}
