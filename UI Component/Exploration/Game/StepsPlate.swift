//
//  StepsPlate.swift
//  UI Component
//
//  Created by yuhe on 2022/9/26.
//

import SwiftUI

struct StepsPlate: View {
    @StateObject var model : StepsModel = .init()
    var body: some View {
        VStack {
            Button("+1") {
                model.steps += 1
            }
            Text("步数: \(model.steps)")
        }
    }
}

struct StepsPlate_Previews: PreviewProvider {
    static var previews: some View {
        StepsPlate()
    }
}
