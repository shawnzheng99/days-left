//
//  ContentView.swift
//  left
//
//  Created by Zheng C on 2021-12-31.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 0.0

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Spacer()
            VStack {
                HeaderView()
            
                ForEach((0...1), id: \.self) { _ in
                    HStack {
                        ForEach((1...16), id: \.self) { _ in
                            DotView()
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
