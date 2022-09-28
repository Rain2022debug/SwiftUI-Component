//
//  StepsModel.swift
//  UI Component
//
//  Created by yuhe on 2022/9/28.
//

import Foundation

class StepsModel: ObservableObject{
    init() {
        self.steps = 0
    }
    @Published var steps: Int
}
