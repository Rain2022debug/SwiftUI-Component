//
//  TimelineContentView.swift
//  UI Component
//
//  Created by yuhe on 2022/9/26.
//

import SwiftUI

struct TimelineContentView: View {
    @StateObject private var viewModel: TimelineContentViewModel = .init()
    
    var body: some View {
        VStack {
            VStack {
                ForEach(viewModel.contents) {
                    TimelineContentItemView(timelineContent: $0)
                }
            }
        }.onAppear(){
            viewModel.loadData()
        }
    }
}

struct TimelineContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineContentView()
    }
}
