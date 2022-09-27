//
//  ProfileAvatarModificationView.swift
//  UI Component
//
//  Created by yuhe on 2022/9/26.
//

import SwiftUI

struct ProfileAvatarModificationView: View {
    @EnvironmentObject private var loggedInModel: LoggedInModelFromHomeView
    @State private var displayMore: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Image(loggedInModel.profile.avatarUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(alignment: .center)
            Spacer()
        }
        .navigationTitle("个人")
        .toolbar {
            Button {
                displayMore = true
            } label: {
                Image(systemName: "ellipsis")
            }
            .actionSheet(isPresented: $displayMore) {
                ActionSheet(title: Text("More"),
                            buttons: [
                                .default(Text("修改头像")) {loggedInModel.updateLoggedInAvatarUrl(url: "timeline_profile_image_tu")},
                                .cancel()])
            }

        }
    }
}

struct ProfileAvatarModificationView_Previews: PreviewProvider {
    static var previews: some View {
        let loginedModel: LoggedInModelFromHomeView = LoggedInModelFromHomeView()
        return ProfileAvatarModificationView()
            .environmentObject(loginedModel)
    }
}
