//
//  ProfileView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI
let items: [ListItemModel] = [.init(icon: "message.and.waveform", title: "服务"),
                                 .init(icon: "shippingbox", title: "收藏"),
                                 .init(icon: "menucard", title: "卡包"),
                                 .init(icon: "gearshape", title: "设置")]
struct ProfileView: View {
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    Section{
                        ProfileHeaderView()
                    }
                    Section{
                        ForEach(items) { item in
                            if item.title == "设置" {
                                NavigationLink {
                                    SettingsView()
                                } label: {
                                    HStack {
                                        Image(systemName: item.icon)
                                        Text(item.title)
                                    }
                                }
                            } else {
                                HStack {
                                    Image(systemName: item.icon)
                                    Text(item.title)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("我的")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
