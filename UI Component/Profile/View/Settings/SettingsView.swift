//
//  SettingsView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/8.
//

import SwiftUI

struct SettingsView: View {
    let topId: String="topId"
    let item = ListItemModel(icon: "gearshape", title: "设置")
    var body: some View {
        ScrollViewReader { proxy in
            List{
                Text("Settings Page")
                    .id(topId)
                ForEach(0..<20) {_ in
                    HStack {
                        Image(systemName: item.icon)
                        Text(item.title)
                    }
                }
                Button("Back To Top") {
                    withAnimation(.spring()){
                        proxy.scrollTo(topId, anchor: .top)
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
