//
//  ExplorationView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

import SwiftUI

let explorationItems: [ListItemModel] = [.init(icon: "circle.circle.fill", title: "朋友圈"),
                                         .init(icon: "gamecontroller.fill", title: "游戏"),
                                         .init(icon: "circle.dashed", title: "小程序")]

struct ExplorationView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(explorationItems) { item in
                    if item.title == "朋友圈"{
                        NavigationLink(destination: TimelineView()) {
                            Label(item.title, systemImage: item.icon)
                        }
                    } else if item.title == "游戏"{
                        NavigationLink(destination: GameView()) {
                            Label(item.title, systemImage: item.icon)
                        }
                    }
                    else{
                        Label(item.title, systemImage: item.icon)
                    }
                }
            }
            .navigationTitle("发现")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct ExplorationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorationView()
    }
}
