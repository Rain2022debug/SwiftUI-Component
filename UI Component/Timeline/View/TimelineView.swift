//
//  TimelineView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineView: View {
    @EnvironmentObject private var loginedModel: LoggedInModelFromHomeView
    
    var body: some View {
        List {
            TimelineHeaderView(nickname: loginedModel.profile.nickname, profileImageName: loginedModel.profile.avatarUrl, backgroundImageName: "timeline_profile_background")
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            TimelineContentView()
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .navigationBarTitle("朋友圈")
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        let loginedModel: LoggedInModelFromHomeView = LoggedInModelFromHomeView()
        TimelineView()
            .environmentObject(loginedModel)
    }
}
