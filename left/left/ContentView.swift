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
                GridDotView()
            }
            .padding(.horizontal, 60)
            .frame(maxHeight: 320)
            Spacer()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
