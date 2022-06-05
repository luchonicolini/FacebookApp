//
//  BackgroundView.swift
//  Facebook (iOS)
//
//  Created by Luciano Nicolini on 04/06/2022.
//

import SwiftUI

struct BackgroundView: View {
    var imageName: String
  
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                Rectangle()
                .foregroundColor(.clear)
                .background(
                    .linearGradient(Gradient(colors: [Color.gray.opacity(0),Color.black.opacity(0.9)]), startPoint: .center, endPoint: .bottom)
                )
                
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "twinlake")
    }
}
