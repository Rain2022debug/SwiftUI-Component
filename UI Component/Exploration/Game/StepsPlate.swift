//
//  StepsPlate.swift
//  UI Component
//
//  Created by yuhe on 2022/9/26.
//

import SwiftUI

struct StepsPlate: View {
    @State private var steps : Int = 0
    var body: some View {
        VStack {
            Button("+1") {
                steps += 1
                print("当前步数: \(steps)")
            }
            Text("步数: \(steps)")
        }
    }
}

struct StepsPlate_Previews: PreviewProvider {
    static var previews: some View {
        StepsPlate()
    }
}
