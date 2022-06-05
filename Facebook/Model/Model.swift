//
//  Model.swift
//  Facebook (iOS)
//
//  Created by Luciano Nicolini on 04/06/2022.
//

import Foundation

struct Story: Identifiable, Hashable {
    var id = UUID()
    var imageName: String
    var user: User
}

struct User: Hashable {
    var imageName: String
    var userName: String
}

struct Feed: Identifiable,Hashable {
    var id = UUID()
    var imageName: String
    var text: String
    var user: User
}

struct HomePageModel {
    var stroies: [Story] = {
        var user = User(imageName: "perfil", userName: "luciano")
        return [Story(imageName: "sierra1", user: user),
                Story(imageName: "sierra2", user: user),
                Story(imageName: "sierra3", user: user),
                Story(imageName: "sierra4", user: user)]

    }()
    
    var feeds: [Feed] = {
        var user = User(imageName: "perfil", userName: "luciano")
        return [Feed(imageName: "sierra1", text: "imagen1", user: user),
                Feed(imageName: "sierra2", text: "imagen2", user: user),
                Feed(imageName: "sierra3", text: "imagen3", user: user),
                Feed(imageName: "sierra4", text: "imagen4", user: user)
        ]
    }()
}
