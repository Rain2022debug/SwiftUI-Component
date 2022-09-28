//
//  TimelineContentViewModel.swift
//  UI Component
//
//  Created by yuhe on 2022/9/23.
//

import Foundation

final class TimelineContentViewModel: ObservableObject{
    @Published private(set) var contents: [TimelineContent] = []
    
    func loadData() {
        contents.removeAll()
        
        contents.append(TimelineContent(id: 4,
                                        nickname: "桃子猪",
                                        avatarUrl: "timeline_profile_image",
                                        type: .singleMessage(message: "不是我矫情,这年呐~,就是得和Swift一起过才有味道."),
                                        likes: []))
        contents.append(TimelineContent(id: 3,
                                        nickname: "草莓🐰",
                                        avatarUrl: "timeline_profile_image_tu",
                                        type: .singleMessage(message: "今年的支付宝开始集五福啦!去年只中了888888, 希望今年可以多加几个零呢!"),
                                        likes: []))
        contents.append(TimelineContent(id: 2,
                                        nickname: "桃子猪",
                                        avatarUrl: "timeline_profile_image",
                                        type: .singleMessage(message: "好希望疫情早点结束, 我可以早一点回家."),
                                        likes: []))
        contents.append(TimelineContent(id: 1,
                                        nickname: "芒果🦒",
                                        avatarUrl: "timeline_profile_image_lu",
                                        type: .photoMessage(photo: "timeline_profile_image_lu_photo1", message: "最近移情别恋Adjust Editor Options popup menu, Canvas都好久不和我在一起玩了. 哼~生气."),
                                        likes: ["芒果🦒"]))
    }
}
