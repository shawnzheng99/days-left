//
//  DotView.swift
//  left
//
//  Created by Zheng C on 2021-12-31.
//

import SwiftUI

struct DotView: View {
    var isBlinking = false
    let dotDiameter: CGFloat = 5.0
    @State private var scale: CGFloat = 0.0

    var body: some View {
        if isBlinking {
            Circle()
                .frame(width: dotDiameter, height: dotDiameter)
                .foregroundColor(Color(hue: 0.479, saturation: 0.966, brightness: 0.953))
                .scaleEffect(scale)
                .animation(
                    .easeInOut(duration: 0.75)
                        .repeatForever()
                        .delay(0.75),
                    value: scale
                )
                .onAppear {
                    self.scale = 1
                }
        } else {
            Circle()
                .frame(width: dotDiameter, height: dotDiameter)
                .foregroundColor(Color(hue: 0.479, saturation: 0.966, brightness: 0.953))
        }
        
    }
}

struct DotView_Previews: PreviewProvider {
    static var previews: some View {
        DotView(isBlinking: true)
    }
}
