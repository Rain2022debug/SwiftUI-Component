//
//  ProfileHeaderView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileHeaderView: View {
    @EnvironmentObject private var loginedModel: LoginedModelFromHomeView
    @Environment(\.horizontalSizeClass) var sizeClass
    @Environment(\.scenePhase) var scenePhase
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State var name : String = "桃子猪"
    
    var body: some View {
        HStack {
            Image(loginedModel.profile.avatarUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80,height: 80, alignment: .center)
                .circle()
            VStack(alignment: .leading) {
                Text(loginedModel.profile.nickname)
                    .font(.system(size: 35))
//                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .foregroundColor(Color.skyFont)
                    .lineLimit(2)
                    .onChange(of: scenePhase) { newValue in
                        if newValue == .inactive{
                            name = "用户昵称保密"
                        }else if newValue == .active{
                            name = loginedModel.profile.nickname
                        }
                    }
                if sizeClass == .compact{
                    compactLine()
                }else {
                    regularLine()
                }
            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static let loginedModel: LoginedModelFromHomeView = LoginedModelFromHomeView()
    static var previews: some View {
        ProfileHeaderView()
            .environmentObject(loginedModel)
    }
}

struct compactLine:View{
    var body: some View{
        HStack {
            Text("微信号：XXXXXXX")
                .font(.system(size: 20))
                .layoutPriority(1)
                .lineLimit(1)
            .foregroundColor(Color.gray)
            Text("个性签名：123456789")
                .lineLimit(1)
                .font(.system(size: 20))
                .foregroundColor(.orange)
        }
    }
}

struct regularLine:View{
    var body: some View{
        Text("微信号:XXXXXXX")
            .layoutPriority(1)
            .lineLimit(1)
            .font(.system(size: 20))
            .foregroundColor(.gray)
        Text("个性签名：123456789")
            .lineLimit(1)
            .font(.system(size: 20))
            .foregroundColor(.orange)
    }
}




