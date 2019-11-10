//
//  PostView.swift
//  FacebookSwiftUI
//
//  Created by Igor Soares on 09/11/19.
//  Copyright © 2019 Igor Soares. All rights reserved.
//

import SwiftUI

struct PostView: View {
  let post: Post
  
  var body: some View {
    VStack (alignment: .leading, spacing: 16) {
      
      HStack {
        Image(post.user.image)
          .resizable()
          .clipShape(Circle())
          .frame(width: 60, height: 60)
          .clipped()
        
        VStack (alignment: .leading, spacing: 4) {
          Text(post.user.name).font(.headline)
          Text("Posted 8 hrs ago").font(.subheadline)
        }.padding(.leading, 8)
      }.padding(.top, 16).padding(.leading, 16)
      
      Text(post.text).lineLimit(nil).padding(.trailing, 16).padding(.leading, 16)
      Image(post.image)
        .scaledToFill()
        .frame(height: 350)
        .clipped()
    }.padding(.bottom, -8).padding(.leading, -16)
  }
}
