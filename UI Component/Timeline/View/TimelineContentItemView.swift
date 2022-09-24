//
//  TimelineContentItemView.swift
//  UI Component
//
//  Created by yuhe on 2022/9/23.
//

import SwiftUI

struct TimelineContentItemView: View {
    private enum Contants {
        static let imageSize: CGSize = .init(width: 50, height: 50)
        static let nickSpacing: CGFloat = 10
        static let singlePhotoMaxWidth: CGFloat = 200
    }
    
    let profileImageName: String
    let profileNick: String
    let content: String
    let singlePhotoName: String?
    let like: [String]?
    
    var body: some View {
        HStack(alignment: .top) {
            Image(profileImageName)
                .resizable()
                .frame(width: Contants.imageSize.width, height: Contants.imageSize.height)
            VStack(alignment: .leading, spacing: Contants.nickSpacing) {
                Text(profileNick)
                    .bold()
                Text(content)
                    .fontWeight(.light)
                if let singlePhotoName = singlePhotoName {
                    Image(singlePhotoName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: Contants.singlePhotoMaxWidth)
                }
                if let like = like {
                    TimelinkContentLikeView(like: like)
                }
            }
            Spacer()
        }
    }
}

struct TimelineContentItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪", content: "我矫情",
                                    singlePhotoName: nil,
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "你矫情",
                                    singlePhotoName: "timeline_profile_image_lu_photo1",
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "矫情",
                                    singlePhotoName: "timeline_profile_image_lu_photo1",
                                    like: ["桃子猪"])
        }
    }
}
