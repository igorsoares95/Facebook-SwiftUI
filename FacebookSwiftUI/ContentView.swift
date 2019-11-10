//
//  ContentView.swift
//  FacebookSwiftUI
//
//  Created by Igor Soares on 09/11/19.
//  Copyright © 2019 Igor Soares. All rights reserved.
//

import SwiftUI

struct Story {
  let id: Int
  let image: String
  let user: User
}

struct ContentView: View {
  let posts: [Post] = [
    Post(id: 0,
         user: User(id: 0,
                    name: "Steve Jobs",
                    image: "steve-jobs-profile"),
         text: "Description",
         image: "steve-jobs-landscape"),
    Post(id: 1,
         user: User(id: 1,
                    name: "Craig Federighi",
                    image: "craig-federighi-profile"),
         text: "Description",
         image: "craig-federighi-landscape"),
    Post(id: 2,
         user: User(id: 2,
                    name: "Tim Cook",
                    image: "tim-cook-profile"),
         text: "Description",
         image: "tim-cook-landscape")
  ]
  
  let storys: [Story] = [
    Story(id: 0,
          image: "steve-jobs-profile",
          user: User(id: 0,
                     name: "Steve Jobs",
                     image: "steve-jobs-profile")),
    Story(id: 1,
          image: "steve-jobs-profile",
          user: User(id: 0,
                     name: "Steve Jobs",
                     image: "steve-jobs-profile"))
  ]
  
  var body: some View {
    NavigationView {
      List {
        ScrollView {
          VStack (alignment: .leading, spacing: 10) {
            Text("Trending").padding(.top, 10)
            HStack {
              ForEach(storys, id: \.id) {
                StoryView(story: $0).padding(.bottom, 10)
              }
            }
          }
        }
        
        ForEach(posts, id: \.id) {
          PostView(post: $0)
        }
      }.navigationBarTitle("Groups")
    }
  }
}

struct StoryView: View {
  let story: Story
  
  var body: some View {
    VStack (alignment: .leading, spacing: 10) {
      Image(story.image)
        .resizable()
        .renderingMode(.original)
        .cornerRadius(4)
      Text(story.user.name)
    }
    .frame(width: 110, height: 170)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
