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
                HStack {
                
                    Text(Date.now, format: .dateTime.year())
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .font(.subheadline)
                    Spacer()
                    Text("\(numberOfDTY())/365")
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                        .font(.subheadline)
                    Spacer()
                    Text(String(format: "%.2f", Double(numberOfDTY())/365.0 * 100) + "%")
                        .fontWeight(.semibold)
                        .foregroundColor(.red)
                        .font(.subheadline)
                
                }.frame(width: 275.0)
            

                ForEach((0...1), id: \.self) { _ in
                    HStack {
                        ForEach((1...16), id: \.self) { _ in
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
                }.frame(width: 275.0)
            
                    
            }.frame(width: 275.0)
            Spacer()
            
        }
    }
    private func numberOfDTY() -> Int32 {
        return 365
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
