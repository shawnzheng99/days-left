//
//  ContentView.swift
//  left
//
//  Created by Zheng C on 2021-12-31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Spacer()
            VStack {
                HeaderView(numberOfDaysPassed: calculateDaysPassedThisYear())
                ForEach((0...1), id: \.self) { outterIdx in
                    HStack {
                        ForEach((0...16), id: \.self) { innerIdx in
                            DotView(isBlinking: innerIdx == 16 && outterIdx == 1)
                        }
                    }
                }.frame(width: 275.0)
                
            }.frame(width: 275.0)
            Spacer()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
