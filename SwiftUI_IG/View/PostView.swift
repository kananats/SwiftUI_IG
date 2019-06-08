//
//  PostView.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/08.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import SwiftUI

extension Post {
    struct View: SwiftUI.View {
        let post: Post
        
        var body: some SwiftUI.View {
            VStack(alignment: .leading, spacing: 16) {
                Header(post: post)
                    .padding(.leading, 16)
                Content(post: post)
            }.padding(.leading, -20)
        }
    }
}

extension Post.View {
    struct Header: SwiftUI.View {
        let post: Post
        
        var body: some SwiftUI.View {
            HStack {
                Image(uiImage: post.user.image.cropToSquare())
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                    .clipped()
                    .overlay(Circle().inset(by: -2).stroke(AngularGradient(gradient: Gradient(colors: Color.instagram), center: UnitPoint(x: 0.5, y: 0.5)), lineWidth: 4))
                    .overlay(Circle().inset(by: -1).stroke(Color.white, lineWidth: 2))
                VStack(alignment: .leading, spacing: 2) {
                    Text(post.user.name)
                        .font(.headline)
                    Text(post.content.date!.description)
                        .font(.caption)
                }
                .padding(.leading, 4)
            }
        }
    }
}

extension Post.View {
    struct Content: SwiftUI.View {
        let post: Post
        
        var index: Int = 1
        
        @State private var animating = false

        var body: some SwiftUI.View {
            VStack(alignment: .leading) {
                Text(post.content.text!)
                    .lineLimit(nil)
                    .padding(.leading, 16)
                    .padding(.trailing, -16)
                Image(uiImage: post.content.image!)
                    .resizable()
                    .aspectRatio(CGSize(width: post.content.image!.size.width, height: post.content.image!.size.height), contentMode: .fit)
                    .padding(.trailing, -16)
                    .blur(radius: animating ? 0 : 10)
                    .opacity(animating ? 1 : 0)
                    .onAppear {
                        withAnimation(.basic(duration: 2.4)) {
                            self.animating = true
                        }
                    }
            }
        }
    }
}
