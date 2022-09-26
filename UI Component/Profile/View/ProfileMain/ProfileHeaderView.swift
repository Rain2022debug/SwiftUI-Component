//
//  ProfileHeaderView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileHeaderView: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    @Environment(\.scenePhase) var scenePhase
    @State var name : String = "桃子猪"
    var body: some View {
        HStack {
            Image("timeline_profile_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80,height: 80, alignment: .center)
                .circle()
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 35))
                    .lineLimit(2)
                    .onChange(of: scenePhase) { newValue in
                        if newValue == .inactive{
                            name = "用户昵称保密"
                            print(name)
                        }else if newValue == .active{
                            name = "桃子猪"
                            print(name)
                        }
                    }
                if sizeClass == .compact{
                    HStack {
                        Text("微信号：XXXXXXX")
                            .font(.system(size: 23))
                            .layoutPriority(1)
                            .lineLimit(1)
                        .foregroundColor(Color.gray)
                        Text("个性签名：123456789")
                            .lineLimit(1)
                            .font(.system(size: 23))
                            .foregroundColor(.orange)
                    }
                }else {
                    Text("微信号:XXXXXXX")
                        .layoutPriority(1)
                        .lineLimit(1)
                        .font(.system(size: 23))
                        .foregroundColor(.gray)
                    Text("个性签名：123456789")
                        .lineLimit(1)
                        .font(.system(size: 23))
                        .foregroundColor(.orange)
                }
                

            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}


