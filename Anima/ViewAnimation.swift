//
//  ViewAnimation.swift
//  Anima
//
//  Created by Mete Alp Kizilcay on 21.10.2020.
//

import SwiftUI

struct ViewAnimation: View {
    @State private var isShowingRed = false
    var body: some View {
            VStack {
                Button("Tap Me") {
                    // do nothing
                    withAnimation {
                        self.isShowingRed.toggle()
                    }
                }
                if isShowingRed {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 200, height: 200)
//                        .transition(.scale)
//                        .transition(.asymmetric(insertion: .scale, removal: .opacity))
                        .transition(.pivot)
                }
            }
        }
}

struct ViewAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ViewAnimation()
    }
}
