//
//  ProfileHeaderView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        HStack {
            Image("timeline_profile_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80,height: 80, alignment: .center)
                .circle()
            VStack(alignment: .leading) {
                Text("桃子猪")
                    .font(.system(size: 45))
                Text("微信号：XXXXXXX")
                    .font(.system(size: 23))
                    .foregroundColor(Color.gray)

            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}


