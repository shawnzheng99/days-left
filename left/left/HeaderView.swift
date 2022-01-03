//
//  HeaderView.swift
//  left
//
//  Created by Zheng C on 2022-01-03.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
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
    }
    
    private func numberOfDTY() -> Int32 {
        return 365
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
