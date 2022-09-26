//
//  TimelineContentItemViewModel.swift
//  UI Component
//
//  Created by yuhe on 2022/9/23.
//

import Foundation

final class TimelineContentItemViewModel{
    private(set) var profileImageName: String = ""
    private(set) var profileNick: String = ""
    private(set) var content: String = ""
    private(set) var showSinglePhotoName: Bool = false
    private(set) var singlePhotoName: String = ""
    private(set) var showLikes: Bool = false
    private(set) var likes: [String] = []
    
    init(timelineContent: TimelineContent) {
        profileImageName = timelineContent.avatarUrl
        profileNick = timelineContent.nickname
        
        switch timelineContent.type {
        case .singleMessage(let message):
            content = message
            showSinglePhotoName = false
            break
        case .photoMessage(let photo, let message):
            content = message
            showSinglePhotoName = true
            singlePhotoName = photo
        }
        
        showLikes = timelineContent.likes.count > 0
        likes.append(contentsOf: timelineContent.likes)
    }
}
