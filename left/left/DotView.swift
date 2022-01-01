//
//  DotView.swift
//  left
//
//  Created by Zheng C on 2021-12-31.
//

import SwiftUI

struct DotView: View {
    @State private var scale: CGFloat = 0.0

    var body: some View {
        Circle()
            .frame(width: 15.0, height: 15.0)
            .foregroundColor(Color(hue: 0.471, saturation: 1.0, brightness: 1.0, opacity: 0.453))
            .scaleEffect(scale)
            .animation(
                .easeInOut(duration: 1)
                    .repeatForever().delay(0), value: scale
            )
            .onAppear {
                self.scale = 1
            }
    }
}

struct DotView_Previews: PreviewProvider {
    static var previews: some View {
        DotView()
    }
}
