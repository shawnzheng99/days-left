//
//  GridDotView.swift
//  left
//
//  Created by Zheng C on 2022-01-03.
//

import SwiftUI

struct GridDotView: View {
    let totalToRender = Array(1...calculateDaysPassedThisYear())
    let layout = [
        GridItem(.adaptive(minimum: 5))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout, spacing: 10) {
                ForEach(totalToRender, id: \.self) { item in
                    DotView(isBlinking: item == totalToRender.last)
                }
            }
            .padding(.top, 10)
            .frame(maxHeight: 320)
        }
            
    }
}

struct GridDotView_Previews: PreviewProvider {
    static var previews: some View {
        GridDotView()
    }
}
