//
//  FeedView.swift
//  Facebook (iOS)
//
//  Created by Luciano Nicolini on 05/06/2022.
//

import SwiftUI

struct FeedView: View {
    var feed: Feed
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                ProfileView(imageName: feed.user.imageName)
                VStack(alignment: .leading){
                    Text(feed.user.userName)
                        .font(.title)
                    Text("Descripcion")
                        .font(.callout)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Button(action: {
                
                }, label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                        .padding()
                })
                
            }
            .padding()
            Text(feed.text)
                .font(.title2)
                .fontWeight(.light)
                .padding([.leading, .trailing])
            
            Image(feed.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(feed: HomePageModel().feeds[0])
    }
}
