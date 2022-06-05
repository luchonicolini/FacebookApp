//
//  ProfileView.swift
//  Facebook (iOS)
//
//  Created by Luciano Nicolini on 04/06/2022.
//

import SwiftUI

struct ProfileView: View {
   var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 50, height: 50)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black,lineWidth: 1))
            .shadow(radius: 10)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(imageName: "perfil")
            //.previewLayout(.fixed(width: 100, height: 100))
    }
}
