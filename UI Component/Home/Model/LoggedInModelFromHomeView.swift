//
//  LoginedModelFromHomeView.swift
//  UI Component
//
//  Created by yuhe on 2022/9/26.
//
import Foundation
import SwiftUI

class LoggedInModelFromHomeView: ObservableObject {
    @Published private(set) var profile: Profile = Profile(nickname: "桃子猪", avatarUrl: "timeline_profile_image", backgroundUrl: "timeline_profile_background")

    func updateLoggedInAvatarUrl(url: String) {
        profile = Profile(nickname: profile.nickname, avatarUrl: url, backgroundUrl: profile.backgroundUrl)
    }
}
