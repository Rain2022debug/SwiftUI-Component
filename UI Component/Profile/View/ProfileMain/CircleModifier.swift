//
//  CircleModifier.swift
//  UI Component
//
//  Created by yuhe on 2022/9/19.
//

import Foundation
import SwiftUI

struct CircleModifier: ViewModifier{
    @State var lineWidth = CGFloat(5)
    @State var shadowRadius = CGFloat(6)
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.orange,lineWidth: lineWidth)
            }
            .shadow(radius: shadowRadius)
    }
}
extension View{
    func circle() -> some View{
        modifier(CircleModifier())
    }
}
