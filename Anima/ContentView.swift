//
//  ContentView.swift
//  Anima
//
//  Created by Mete Alp Kizilcay on 21.10.2020.
//

import SwiftUI

//struct ContentView: View {
//    @State private var animationAmount: CGFloat = 1
//    var body: some View {
//        Button("Tap Me") {
////            self.animationAmount += 1
//        }
//            .padding(50)
//            .background(Color.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
////            .scaleEffect(animationAmount)
////                      .blur(radius: (animationAmount - 1) * 3)
////        .animation(.interpolatingSpring(stiffness: 50, damping: 5))
////            .animation(
////                Animation.easeInOut(duration: 0.3)
////                    .repeatCount(2, autoreverses: true)
////            )
//        .overlay(
//            Circle()
//                .stroke(Color.red)
//                .scaleEffect(animationAmount)
//                .opacity(Double(3 - animationAmount))
//                .animation(
//                    Animation.easeOut(duration: 1)
//                        .repeatForever(autoreverses: false)
//                )
//        )
//        .onAppear {
//            self.animationAmount = 3
//        }
//    }
//}

//struct ContentView: View {
//    @State private var animationAmount: CGFloat = 1
//
//    var body: some View {
//        print(animationAmount)
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
//
//            Spacer()
//
//            Button("Tap Me") {
//                self.animationAmount += 1
//            }
//            .padding(40)
//            .background(Color.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmount)
//            Spacer()
//        }
//    }
//}
struct ContentView: View {
    @State private var animationAmount = 0.0
    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            // do nothing
//            self.animationAmount += 360
//            withAnimation {
//                self.animationAmount += 90
//            }
//            withAnimation(.interpolatingSpring(stiffness: 8, damping: 3)) {
//                self.animationAmount += 360
                self.enabled.toggle()
//            }
        }
//        .padding(50)
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.red)
        .animation(.default)
        .foregroundColor(.white)
//        .clipShape(Circle())
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 20))
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
//        .animation(.default)
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
