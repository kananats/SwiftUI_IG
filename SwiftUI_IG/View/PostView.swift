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
                Footer(post: post)
                    .padding(.leading, 16)
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
                    .overlay(Circle().inset(by: -2).stroke(AngularGradient(gradient: Gradient(colors: Color.instagram), center: .center), lineWidth: 4))
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
        
        @State private var visible = false

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
                    .blur(radius: visible ? 0 : 10)
                    .opacity(visible ? 1 : 0)
                    .onAppear {
                        withAnimation(.basic(duration: 1.8)) {
                            self.visible = true
                        }
                    }
            }
        }
    }
}

extension Post.View {
    struct Footer: SwiftUI.View {
        let post: Post
        
        @State private var didLike = false
        
        @State private var showComment = false
        
        var body: some SwiftUI.View {
            VStack(alignment: .leading) {
                HStack(spacing: 18) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 27, height: 27)
                        .foregroundColor(.red)
                        .scaleEffect(didLike ? 0 : 1)
                        .overlay(
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 27, height: 27)
                                .foregroundColor(.red)
                                .scaleEffect(didLike ? 1 : 0)
                        )
                        .tapAction {
                            withAnimation(.basic(duration: 0.22)) {
                                self.didLike.toggle()
                            }
                        }
                    
                    Image(systemName: "ellipses.bubble")
                        .resizable()
                        .frame(width: 27, height: 27)
                        .scaleEffect(showComment ? 0 : 1)
                        .overlay(
                            Image(systemName: "ellipses.bubble.fill")
                                .resizable()
                                .frame(width: 27, height: 27)
                                .scaleEffect(showComment ? 1 : 0)
                        )
                        .tapAction {
                            withAnimation(.basic(duration: 0.22)) {
                                self.showComment.toggle()
                            }
                        }
                }
                if showComment {
                    VStack {
                        Text("Comment 1")
                        Text("Comment 2")
                        Text("Comment 3")
                    }
                }
            }
        }
    }
}
