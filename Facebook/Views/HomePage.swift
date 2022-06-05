//
//  HomePage.swift
//  Facebook (iOS)
//
//  Created by Luciano Nicolini on 05/06/2022.
//

import SwiftUI

struct HomePage: View {
    var model = HomePageModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    StoriesView(stories:  self.model.stroies)
                        .frame(height: 200)
                    
                    ForEach(model.feeds) { feed in
                        FeedView(feed: feed)
                        
                    }
                }
            }
            
            .navigationBarTitle(Text("Facebook"))
            .background(.ultraThinMaterial)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
