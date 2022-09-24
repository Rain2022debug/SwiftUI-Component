//
//  TimelineContentView.swift
//  UI Component
//
//  Created by yuhe on 2022/9/23.
//

import SwiftUI

struct TimelineContentView: View {
    var body: some View {
        VStack {
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "不是你矫情,这年呐~,就是得和自己过才有味道.",
                                    singlePhotoName: nil,
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image_tu",
                                    profileNick: "草莓🐰",
                                    content: "今年的支付宝开始集五福啦!去年只中了88888888, 希望今年可以多加几个零呢!",
                                    singlePhotoName: nil,
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "好希望疫情早点结束",
                                    singlePhotoName: nil,
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image_lu",
                                    profileNick: "芒果🦒",
                                    content: "草莓兔都好久不和我在一起玩了. 哼~happy",
                                    singlePhotoName: "timeline_profile_image_lu_photo1",
                                    like: ["芒果🦒"])
        }
    }
}

struct TimelineContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineContentView()
    }
}
