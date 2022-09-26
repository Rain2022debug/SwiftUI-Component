//
//  TimelineContentItemView.swift
//  UI Component
//
//  Created by yuhe on 2022/9/26.
//

import SwiftUI

struct TimelineContentItemView: View {
    private enum Contants {
        static let imageSize: CGSize = .init(width: 50, height: 50)
        static let nickSpacing: CGFloat = 10
        static let singlePhotoMaxWidth: CGFloat = 200
    }
    
    private var viewModel: TimelineContentItemViewModel
    
    init(timelineContent: TimelineContent) {
        viewModel = TimelineContentItemViewModel(timelineContent: timelineContent)
    }
    
    var body: some View {
        HStack(alignment: .top) {
            Image(viewModel.profileImageName)
                .resizable()
                .frame(width: Contants.imageSize.width, height: Contants.imageSize.height)
            VStack(alignment: .leading, spacing: Contants.nickSpacing) {
                Text(viewModel.profileNick)
                    .bold()
                Text(viewModel.content)
                    .fontWeight(.light)
                if viewModel.showSinglePhotoName {
                    Image(viewModel.singlePhotoName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: Contants.singlePhotoMaxWidth)
                }
                if viewModel.showLikes {
                    TimelinkContentLikeView(like: viewModel.likes)
                }
            }
            Spacer()
        }
    }
}

struct TimelineContentItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TimelineContentItemView(timelineContent: TimelineContent(id: 1, nickname: "桃子猪", avatarUrl: "timeline_profile_image", type: .singleMessage(message: "不是家人矫情,这年呐~,就是得和我一起过才有味道."), likes: []))
            TimelineContentItemView(timelineContent: TimelineContent(id: 1, nickname: "芒果🦒", avatarUrl: "timeline_profile_image_lu", type: .photoMessage(photo: "timeline_profile_image_lu_photo1", message: "最近移情别恋, 都好久不在一起玩了. 哼~生气"), likes: []))
            TimelineContentItemView(timelineContent: TimelineContent(id: 1, nickname: "芒果🦒", avatarUrl: "timeline_profile_image_lu", type: .photoMessage(photo: "timeline_profile_image_lu_photo1", message: "最近移情别恋, 都好久不和草莓兔在一起玩了. 哼~"), likes: ["芒果🦒"]))
        }
    }
}
