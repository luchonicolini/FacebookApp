//
//  StoreView.swift
//  Facebook (iOS)
//
//  Created by Luciano Nicolini on 04/06/2022.
//

import SwiftUI

struct StoriesView: View {
    var stories: [Story]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 5) {
                ForEach(stories) { index in
                    CardView(story: index)
                    
                }
            }
            .padding([.leading,.trailing],8)
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(stories: HomePageModel().stroies)
    }
}
