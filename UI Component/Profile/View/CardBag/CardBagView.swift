//
//  CardBagView.swift
//  UI Component
//
//  Created by yuhe on 2022/9/22.
//

import SwiftUI

struct CardBagView: View {
    @State var cardNumber: String = ""
    var body: some View {
        Text("当前的卡片号码是： \(cardNumber)")
        TextField("Card Number", text: $cardNumber)
            .frame(width: 200,height: 50,alignment: .center)
            .textFieldStyle(.roundedBorder)
            
    }
}

struct CardBagView_Previews: PreviewProvider {
    static var previews: some View {
        CardBagView()
    }
}
