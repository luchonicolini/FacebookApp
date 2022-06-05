//
//  CardView.swift
//  Facebook (iOS)
//
//  Created by Luciano Nicolini on 04/06/2022.
//

import SwiftUI

struct CardView: View {
    var story: Story
    var body: some View {
        ZStack {
            BackgroundView(imageName: story.imageName)
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                ProfileView(imageName: story.user.imageName)
                    Spacer()
                    Text(story.user.userName)
                        .font(.system(size: 22))
                        .foregroundColor(.white)
                }
                .padding()
                Spacer()
            }
            .frame(width: 130, height: 200)
            
        }
        .frame(width: 130, height: 200)
        .cornerRadius(20)
        .clipped()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(story: HomePageModel().stroies[0])
            .previewLayout(.fixed(width: 300, height: 500))
    }
}
